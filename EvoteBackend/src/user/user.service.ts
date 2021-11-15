import { forwardRef, Inject, Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import {
	User,
	CreateUserInput,
	LoginResponse,
	LoginUserInput
} from './user.entity'
import { MongoRepository } from 'typeorm'
import * as jwt from 'jsonwebtoken'
import { AuthenticationError } from 'apollo-server-core'
import { Poll, UpdateUserInput } from '../graphql'
import { PollService } from 'src/poll/poll.service'
import { takeWhile } from 'lodash'
import { runMain } from 'module'

@Injectable()
export class UserService {
	constructor(
		@InjectRepository(User)
		private readonly userRepository: MongoRepository<User>,
		@Inject(forwardRef(() => PollService))
		private  pollService: PollService,
	) {}

	async findAll(offset: number, limit: number): Promise<User[]> {
		return await this.userRepository.find({
			order: { createdAt: 'DESC' },
			skip: offset,
			take: limit,
			cache: true
		})
	}

	async findById(_id: string): Promise<User> {
		return await this.userRepository.findOne({ _id })
	}

	async create(input: CreateUserInput): Promise<User> {
		const { username, password, email } = input
		const message = 'Email has already been taken.'

		const existedUser = await this.userRepository.findOne({ email })

		if (existedUser) {
			throw new Error(message)
		}

		const user = new User()
		user.username = username;
		user.password = password;
		user.email = email;
		user.voters = [];
		return await this.userRepository.save(user)
	}

	async update(_id: string, input: UpdateUserInput): Promise<boolean> {
		const { username, password, email } = input

		// const updatedUser = await this.userRepository.updateOne({ _id }, { $set: { input } })

		const user = await this.userRepository.findOne({ _id })
		user.username = username
		user.password = password
		user.email = email
		user.voters = []

		return (await this.userRepository.save(user)) ? true : false
	}

	async delete(_id: string): Promise<boolean> {
		const user = new User()
		user._id = _id
		return (await this.userRepository.remove(user)) ? true : false
	}

	async deleteAll(): Promise<boolean> {
		return (await this.userRepository.deleteMany({})) ? true : false
	}

	async login(input: LoginUserInput): Promise<LoginResponse> {
		const { username, password } = input
		const message = 'Incorrect Username or password. Please try again.'

		const user = await this.userRepository.findOne({ username })

		if (!user || !(await user.matchesPassword(password))) {
			throw new AuthenticationError(message)
		}

		const token = await jwt.sign(
			{
				issuer:'http://localhost:3000',
				subject: user._id,
				audience: user.username,
				role: user.role
			},
			"" + process.env.SECRET_KEY,
			{
				expiresIn: '30d'
			}
		);

		return { token }
	}

	async findOneByToken(token: string) {
		const message = 'The token you provided was invalid.'
		let currentUser

		try {
			let decodeToken

			decodeToken = await jwt.verify(token, process.env.SECRET_KEY)

			currentUser = await this.userRepository.findOne({
				_id: decodeToken.subject
			})
		} catch (error) {
			throw new AuthenticationError(message)
		}

		return currentUser
	}

	async setRole(_id: string, role: string): Promise<boolean> {
		return (await this.userRepository.updateOne({ _id }, { $set: { role } }))
			? true
			: false
	}

	// getUser(candidates: User[], candidate_id: string): User[] | undefined {
	// 	let candidate: User[] | undefined;
	// 	if(candidates && candidates.length > 0) {
	// 		console.log("candidate >>>", candidate_id);
	// 		candidate = candidates.filter(item => {
	// 			console.log(item?._id);
	// 			return item?._id === candidate_id;
	// 		});
	// 	}
	// 	return candidate;
	// }

	// async vote(user_id: string, poll_id: string, candidate_id: string): Promise<boolean> {
	// 	const voter = await this.findById(user_id);
	// 	const poll = await this.pollService.findById(poll_id);
	// 	console.log(poll.candidate.length);
	// 	const candidateInPoll = await poll.candidate.find(it => it._id.toString()==candidate_id);
		
	// 	console.log("poll: ", poll); 
	// 	console.log("voter: ", voter);
	// 	console.log("candidate in poll: >>>", candidateInPoll);


	// 	if (candidateInPoll?.voters){
	// 		candidateInPoll.voters?.push(voter);
	// 	}else{
	// 		candidateInPoll.voters = [voter];
	// 	}
	// 	//return null;
	// 	 return  (await this.userRepository.findOneAndUpdate({_id:poll_id}, {$set: {'voters':[...(candidateInPoll?.voters??[])]}})) ? true : false
	// }


}
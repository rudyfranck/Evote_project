import { forwardRef, Inject, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm'
import { Poll } from './poll.entity'
import { Any, MongoRepository,  } from 'typeorm'
import { CreatePollInput, UpdatePollInput } from '../graphql'
import { UserService } from 'src/user/user.service';
import { User } from 'src/user/user.entity';


@Injectable()
export class PollService {
    constructor(
		@InjectRepository(Poll)
		private readonly pollRepository: MongoRepository<Poll>,
		@Inject(forwardRef(() => UserService))
        private readonly userService: UserService,
	) {}

	async findAll() {
		return await this.pollRepository.find({
			cache: true
		})
	}

	async findById(_id: string): Promise<Poll> {
		return await this.pollRepository.findOne({ _id })
	}

	

	async create(input: CreatePollInput): Promise<Poll> {
		const { title, description,duration, } = input

		const poll = new Poll()
		poll.title = title;
		poll.description = description;
		poll.duration = duration;
		poll.candidate = [];
		
	

		return await this.pollRepository.save(poll)
	}

	async update(_id: string, input: UpdatePollInput): Promise<boolean> {
		const { title, description} = input

		const poll = await this.pollRepository.findOne({ _id })
		poll.title = title
		poll.description = description
		poll.candidate = []

		return (await this.pollRepository.updateOne({_id:_id}, {$set:{input}})) ? true : false
	}

	async delete(_id: string): Promise<boolean> {
		const poll = await this.pollRepository.findOne({ _id })
		return (await this.pollRepository.remove(poll)) ? true : false
	}

	async deleteAll(): Promise<boolean> {
		return (await this.pollRepository.deleteMany({})) ? true : false
	}

	checkIfthisGuyISAlreadyACandidate(poll: Poll, candidate: User){
		var list: User[] = this.candidateOfPoll(poll);
		let isCandidate = false;

		list.forEach(item => {
			if(candidate._id === item._id){
				isCandidate = true
			}
		});
		return isCandidate;
	}

	candidateOfPoll(poll: Poll){
		var pollCandidate =[]
		for(var i=0; i<poll.candidate.length; i++ ){
			pollCandidate = pollCandidate.concat(poll.candidate[i]);
		}
		return pollCandidate
	}

    async addCandidateInPoll(poll_id: string, user_id: string): Promise<Boolean>{
		const candidate  = await this.userService.findById(user_id);
        const poll = await this.findById(poll_id);

		const isAlreadyCandidate = await this.checkIfthisGuyISAlreadyACandidate(poll, candidate)
		// console.log("all poll Candidates: " , this.candidateOfPoll(poll));
		// console.log("is her a candidate?? " , isAlreadyCandidate)
		
		if(isAlreadyCandidate){
			throw new Error(candidate.username + " is already a CANDIDATE in " + poll.title);
		}else{
			if (poll?.candidate){
				if(candidate){
					poll.candidate?.push(candidate);
				}else{
					throw new Error("this user does't  exist : please create a account");
				}
			}else{ 
				poll.candidate = [candidate];
			} 
		}
	return (await this.pollRepository.findOneAndUpdate({_id:poll_id,}, {$set: {'candidate':[...(poll?.candidate??[])]}})) ? true : false
    
    }

	checkIfThisGuyAlreadyVoted(poll: Poll, voter: User) {
		var list: User[] = this.votersOfPoll(poll);
		let hasAlreadyVoted = false;

		list.forEach(item => {
			if(voter._id === item._id) {
				hasAlreadyVoted = true;
			}
		});

		return hasAlreadyVoted;
	}




	votersOfPoll(poll: Poll){
		var pollVoters = []
		for(var i=0; i<poll.candidate.length; i++){
			pollVoters = pollVoters.concat(poll.candidate[i].voters)
		}
		return pollVoters;
	}

	

	async vote(user_id: string, poll_id: string, candidate_id: string): Promise<boolean> {
		const voter = await this.userService.findById(user_id);
		const poll = await this.findById(poll_id);
		
		const candidateInPoll = await poll.candidate.find(it => it._id.toString()==candidate_id);

		const hasAlreadyVoted = await this.checkIfThisGuyAlreadyVoted(poll, voter);

		//console.log("checking >>> ", voter, hasAlreadyVoted)

		if(hasAlreadyVoted) {
			throw new Error("You have allready vote in poll: "+ poll.title);
		} else {
			if (candidateInPoll?.voters && candidateInPoll?.voters.length > 0){
				if(voter){
					candidateInPoll.voters?.push(voter);
				}else {

					throw new Error("this user does't  exist : please create a account");
				}
			}else{
				candidateInPoll.voters = [voter];
			}
		}
		return  (await this.pollRepository.findOneAndUpdate({_id:poll_id}, {$set: {'candidate':[...(poll?.candidate??[])]}})) ? true : false
	}


	async pollVoters(_id: string): Promise<number>{
		const poll = await this.findById(_id);
		var pollVoters = []
		var numberOfVoters = 0;
		for(var i=0; i<poll.candidate.length; i++){
			pollVoters = pollVoters.concat(poll.candidate[i].voters)
				
		}
		numberOfVoters =  pollVoters.length
		return numberOfVoters;
	}

	
	
}

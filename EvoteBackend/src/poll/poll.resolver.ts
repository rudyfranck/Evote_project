import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { CreatePollInput, UpdatePollInput } from 'src/graphql';
import { Poll } from './poll.entity';
import { PollService } from './poll.service';

@Resolver()
export class PollResolver {
    constructor(private readonly pollService: PollService) {}

	@Query(() => [Poll])
	async polls() {
		return await this.pollService.findAll()
	}

	@Query(() => Poll)
	async poll(@Args('_id') _id: string) {
		return await this.pollService.findById(_id)
	}

	@Query(() => Number)
	async pollVoters(@Args('_id') _id: string){
		return await this.pollService.pollVoters(_id)
	}


	@Mutation(() => Poll)
	async createPoll(@Args('input') input: CreatePollInput) {
		return await this.pollService.create(input)
	}

	@Mutation(() => Poll)
	async updatePoll(
		@Args('_id') _id: string,
		@Args('input') input: UpdatePollInput
	) {
		return await this.pollService.update(_id, input)
	}

	@Mutation(() => Boolean)
	async deletePoll(@Args('_id') _id: string) {
		return await this.pollService.delete(_id)
	}

	@Mutation(() => Boolean)
	async deletePolls() {
		return await this.pollService.deleteAll()
	}

    @Mutation(() => Boolean)
    async addCandidateInPoll(@Args('poll_id') poll_id: string, @Args('user_id') user_id: string){
        return await this.pollService.addCandidateInPoll(poll_id,user_id)
    }

	@Mutation(() => Boolean)
	async vote(@Args('user_id') user_id: string, @Args('poll_id') poll_id: string, @Args('candidate_id') candidate_id: string ){
		return await this.pollService.vote(user_id, poll_id, candidate_id)
	}

	
}

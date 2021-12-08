/** ------------------------------------------------------
 * THIS FILE WAS AUTOMATICALLY GENERATED (DO NOT MODIFY)
 * -------------------------------------------------------
 */

import internal from "stream";

/* tslint:disable */
export enum RoleEnum {
    MEMBER = "MEMBER",
    ADMIN = "ADMIN"
}

export class CreatePollInput {
    title: string;
    description: string;
    duration: number;
    candidate: [];
}

export class voteInput{
	user_id: String;
	poll_id: String;
	candidate_id: String;
}

export class CreateUserInput {
    username: string;
    password: string;
    email: string;
    voters: [];
}

export class LoginUserInput {
    username: string;
    password: string;
}

export class UpdatePollInput {
    title?: string;
    description?: string;
    duration?: number;    
}

export class UpdateUserInput {
    username?: string;
    password?: string;
    email?: string;
}

export class LoginResponse {
    token: string;
}

export abstract class IMutation {
    abstract createPoll(input: CreatePollInput): Poll | Promise<Poll>;

    abstract updatePoll(_id: string, input: UpdatePollInput): boolean | Promise<boolean>;

    abstract deletePoll(_id: string): boolean | Poll | Promise<Poll>;

    abstract deletePolls(): boolean | Promise<boolean>;

    abstract register(input: CreateUserInput): User | Promise<User>;

    abstract updateUser(_id: string, input: UpdateUserInput): boolean | Promise<boolean>;

    abstract deleteUser(_id: string): boolean | Promise<boolean>;

    abstract deleteUsers(): boolean | Promise<boolean>;

    abstract login(input: LoginUserInput): LoginResponse | Promise<LoginResponse> ;

    abstract setRole(_id: string, role: RoleEnum): boolean | Promise<boolean>;

    abstract addCandidateInPoll(user_id: string, poll_id: string): boolean | Promise<boolean>;

   

  


}

export abstract class IQuery {
    abstract polls(): Poll[] | Promise<Poll[]>;

    abstract poll(_id: string): Poll | Promise<Poll>;

    abstract hello(): string | Promise<string>;

    abstract me(): User | Promise<User>;

    abstract users(offset: number, limit: number): User[] | Promise<User[]>;

    abstract user(_id: string): User | Promise<User>;

    abstract vote(user_id: string, poll_id: string, candidate_id: string ): boolean | Promise<boolean>;

    abstract pollVoters(_id: string) : number | Promise<number>;
     
}

export class Poll {
    _id: string;
    title: string;
    description: string;
    duration: number;
    candidate: User[];
    voters: number;
    createdAt: Date;
    updatedAt: Date;
}

export abstract class ISubscription {
    abstract userCreated(): User | Promise<User>;
}

export class User {
    _id: string;
    username: string;
    password: string;
    email: string;
    role: RoleEnum;
    status: boolean;
    voters: User[];
    createdAt: string;
    updatedAt: string;
}
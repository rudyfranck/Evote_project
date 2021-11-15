import {
	Entity,
	ObjectIdColumn,
	Column,
	Index,
	CreateDateColumn,
	UpdateDateColumn,
	BeforeInsert
} from 'typeorm'
import { IsString, IsNotEmpty } from 'class-validator'
import uuid = require('uuid')
import { isTypedArray } from 'util/types'
import { User } from 'src/user/user.entity'
import { Type } from 'class-transformer';
import { isNumber } from 'lodash'

@Entity()
export class Poll {
	@ObjectIdColumn()
	_id: string

	@Column()
	@IsString()
	@IsNotEmpty()
	title: string

	@Column()
	@IsString()
	@IsNotEmpty()
	description: string

	
	@Column()
	@IsNotEmpty()
	duration: number;

	Relationship
   // @Column(type => User)
   @Column()
    candidate: User[]


	@CreateDateColumn({ type: 'timestamp' })
	createdAt: Date

	@UpdateDateColumn({ type: 'timestamp' })
	updatedAt: Date

	@BeforeInsert()
	async b4create() {
		this._id = await uuid.v1()
	}
}

function ApiProperty(arg0: { type: StringConstructor[] }) {
	throw new Error('Function not implemented.')
}

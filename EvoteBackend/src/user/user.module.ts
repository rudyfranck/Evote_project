import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PollModule } from 'src/poll/poll.module';
import { User } from './user.entity';
import { UserResolver } from './user.resolver';
import { UserService } from './user.service';

@Module({
  imports: [TypeOrmModule.forFeature([User]),
            forwardRef(() => PollModule)
],
  providers: [UserResolver, UserService],
  exports: [UserService]
})
export class UserModule {}

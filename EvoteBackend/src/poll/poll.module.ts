import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserModule } from 'src/user/user.module';
import { UserService } from 'src/user/user.service';
import { Poll } from './poll.entity';
import { PollResolver } from './poll.resolver';
import { PollService } from './poll.service';

@Module({
  imports: [TypeOrmModule.forFeature([Poll]), 
            forwardRef(() => UserModule)
],
  providers: [PollResolver, PollService],
  exports: [PollService]
})

export class PollModule {}

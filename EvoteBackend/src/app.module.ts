import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { join } from 'path';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PollModule } from './poll/poll.module';

@Module({
  imports: [
    GraphQLModule.forRoot({
      typePaths: ['./**/*.graphql'],
      playground: true,
    }),
     
    TypeOrmModule.forRoot({
      type: 'mongodb',
      url:
        'mongodb://rootuser:rootpass@165.227.131.116/evote?authSource=admin',
      entities: [join(__dirname, '**/**.entity{.ts,.js}')],
      synchronize: true,
      useNewUrlParser: true,
      useUnifiedTopology: true ,
      logging: true,
    }),
    UserModule,
    PollModule,
  ],
  controllers: [AppController], 
  providers: [AppService],
})


export class AppModule {}
 
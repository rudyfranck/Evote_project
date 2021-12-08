import 'package:evote_app/common/my_app_bar.dart';
import 'package:evote_app/common/nav_bar.dart';
import 'package:evote_app/page/widgets/header_widget.dart';
import 'package:evote_app/page/widgets/poll/nor_poll_in_list.dart';
import 'package:evote_client/polls_client.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'Component /all_poll_list_card.dart';
import 'Component /new_poll.dart';

class AllPoll extends StatelessWidget {
   AllPoll({Key? key}) : super (key: key);
  final pollsReq = GFetchPollReq();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        drawer: NavBar(),
        body: SingleChildScrollView(
          child: Stack(

            children: [
              const SizedBox(
                height: 100,
                child: HeaderWidget(100, false, Icons.house_rounded),
              ),
              Container(
                alignment: Alignment.center,
                // margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child:Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 5, color: Colors.white),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              offset: Offset(5, 5),
                            )
                          ]
                      ),
                      child: Icon(
                        Icons.how_to_vote,
                        size: 40,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      ' polls',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    //const SizedBox(height: 10),

                    Operation<GFetchPollData, GFetchPollVars>(
                      operationRequest: pollsReq,
                      builder: (context,
                          OperationResponse<GFetchPollData,GFetchPollVars>? response,
                          Object? error) {
                        if(response!.loading){
                          return const Center(child: CircularProgressIndicator());
                        }
                        final polls = response.data!.polls;
                        if(polls!.isEmpty){
                          return const NoPoll();
                        }
                        return   Column(
                          children: [
                            for(var index = 0; index < polls.length; index++)
                              AllPollListCard(poll: polls[index]),
                          ],
                        );
                      },
                      client: GetIt.instance<Client>(),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add poll',
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>  const NewPoll()),);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
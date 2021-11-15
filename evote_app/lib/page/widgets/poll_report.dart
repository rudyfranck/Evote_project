import 'package:evote_app/page/widgets/stop_time.dart';
import 'package:evote_client/graphql/schema.ast.gql.dart';
import 'package:evote_client/polls_client.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'chart.dart';
import 'chart_data/pie_chart_data.dart';
import 'nor_candidate_in_list.dart';

class PollReport extends StatelessWidget{
  final GFetchPollData_polls poll;
  final candidateReq = GFecthUsersReq();
   PollReport({Key? key, required this.poll }) : super (key: key);



  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.transparent,
        child:Container(
        height: MediaQuery.of(context).size.height * .9,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate:SliverChildListDelegate([
                  Column(
                    children: [
                      Text(poll.title),
                       const SizedBox(height: 20),
                      buildCard(),
                      const SizedBox(height: 10),
                    ],
                  )
                ]) )
          ],
        )
    )
    );
  }

  Widget buildCard() {
    if (poll.candidate!.isEmpty){
      return const NoCandidate();
    }else{
      final allVoters = GpollVotersReq((b){
        return b
          ..vars.G_id = poll.G_id;
      });

      return Column(
        children: [
        Operation(
        operationRequest: allVoters,
        builder: (context,
            OperationResponse<GpollVotersData,GpollVotersVars>? response,
            Object? error) {
          final pollVoters = response?.data?.pollVoters ?? 0;

          if(pollVoters == 0){
            return Column(
              children: [
                PieDefault(poll: poll, pollVoters: 1)
              ],
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PieDefault(poll: poll, pollVoters: pollVoters),
              //StopTime(poll: poll ),
            ],
          );
        },
        client: GetIt.instance<Client>(),
      ),
        ],
      );
    }
  }
   }

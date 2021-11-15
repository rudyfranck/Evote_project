import 'package:evote_app/page/widgets/candidate_list.dart';
import 'package:evote_app/page/widgets/header_widget.dart';
import 'package:evote_app/page/widgets/my_app_bar.dart';
import 'package:evote_app/page/widgets/nav_bar.dart';
import 'package:evote_app/page/widgets/nor_candidate_in_list.dart';
import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:evote_client/polls_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  final GFetchPollData_polls poll;
  final candidateReq = GFecthUsersReq();
CandidatePage({Key? key, required this.poll,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            const SizedBox(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
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
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.how_to_vote,
                      size: 40,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    poll.title,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  buildCard(),
                  const SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget buildCard() {
    if (poll.candidate!.isEmpty){
      return const NoCandidate();
    }else{
      return Column(
        children: [
          for(var index = 0; index < poll.candidate!.length; index++)
            CandidateList(pollCandidate: poll.candidate![index],poll: poll,  ),
            ],
      );
    }
  }
}

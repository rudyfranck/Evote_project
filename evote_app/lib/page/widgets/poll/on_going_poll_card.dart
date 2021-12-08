import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../candidate_page.dart';
import 'poll_report.dart';
import 'package:evote_app/page/widgets/poll/stop_time.dart';

class OnGoingPollCard extends StatelessWidget{
  final GFetchPollData_polls poll;
  const OnGoingPollCard({Key? key, required this.poll  }) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        CupertinoButton(
          padding: const EdgeInsets.all(10),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CandidatePage(poll: poll)),
            );
          },
          child: Card(
            color: Colors.grey[300],
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.poll,size: 50,),
                  title: Text(poll.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(poll.description),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    StopTime(poll: poll),

                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        'REPORT',
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => PollReport(poll: poll,),
                        );
                      },
                    ),
                    const SizedBox(width: 6),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey.shade200,
        )
      ],
    );
  }
}
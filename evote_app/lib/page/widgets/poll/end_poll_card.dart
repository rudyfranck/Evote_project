import 'package:timeago/timeago.dart' as timeago;
import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'poll_report.dart';

class EndPollCard extends StatelessWidget{
  final GFetchPollData_polls poll;
  const EndPollCard({Key? key, required this.poll  }) : super (key: key);

  @override
  Widget build(BuildContext context){
    var ct = poll.createdAt.value;
    DateTime startDate = DateTime.parse(ct);
    var endDate = (startDate.add(Duration(days: poll.duration )));
    var timeAgo = timeago.format(endDate);

      return  Card(
          margin: const EdgeInsets.all(10),
          color: Colors.grey[300],
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child:
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(poll.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(poll.description),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
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
                    Text(timeAgo,
                      style: TextStyle(
                          color: Colors.grey.shade500
                      ),
                    ),
                  ],
                )
              ],

            ),
          )

      );
    }
  }


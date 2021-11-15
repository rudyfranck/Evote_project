import 'package:timeago/timeago.dart' as timeago;
import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../candidate_page.dart';
import 'poll_report.dart';
import 'package:evote_app/page/widgets/stop_time.dart';

  class PollList extends StatelessWidget{
  final GFetchPollData_polls poll;
   const PollList({Key? key, required this.poll  }) : super (key: key);

  @override
  Widget build(BuildContext context){
    var now = DateTime.now();
    var ct = poll.createdAt.value;
    DateTime startDate = DateTime.parse(ct);
    var endDate = (startDate.add(Duration(days: poll.duration )));
    var dur = endDate.difference(now).inMicroseconds;
    var timeAgo = timeago.format(endDate);
    if( dur >=1) {
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
    }else{
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

   stoptimeConditions(){
    var now = DateTime.now();
    var ct = poll.createdAt.value;
    DateTime startDate = DateTime.parse(ct);
    var endDate = (startDate.add(Duration(days: poll.duration )));

    var dur = endDate.difference(now).inMicroseconds;
    if(dur >=0 ){
      return StopTime(poll: poll );
    }else {
      return  StopTime(poll: poll );
    }
  }


}
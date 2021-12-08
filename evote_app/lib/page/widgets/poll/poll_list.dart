import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'end_poll_card.dart';
import 'on_going_poll_card.dart';
import 'package:evote_app/page/widgets/poll/stop_time.dart';

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
    if( dur >=1) {
      return OnGoingPollCard(poll:poll);
    }else{
      return  EndPollCard(poll:poll);
    }
  }

}

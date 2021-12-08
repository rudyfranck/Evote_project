import 'dart:async';
import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StopTime extends StatefulWidget {

  final GFetchPollData_polls poll;
  const StopTime({Key? key,  required this.poll})  : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _StopTimeState( );
  }

}

class _StopTimeState  extends State<StopTime> {

  Duration duration =  const Duration();
  Timer? timer;
  bool countDown = true;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reset();
    startTimer();
  }

  void reset() {
    var now = DateTime.now();
     var ct = widget.poll.createdAt.value;
     DateTime startDate = DateTime.parse(ct);
    var endDate = (startDate.add(Duration(days: widget.poll.duration )));

    var dur = endDate.difference(now).inMicroseconds;

      if (countDown) {
        setState(() => duration =  Duration(microseconds: dur)  );
      } else {
        setState(() => duration =  const Duration());
      }

  }

  void startTimer() {
    timer = Timer.periodic( const Duration(seconds: 1), (_) => addTime());
  }

  void stopTimer({bool resets = true}){
    if (resets){
      reset();
    }
    setState(() => timer?.cancel());
  }

  void addTime() {
    setState(() {
      final seconds = duration.inSeconds -1;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return
    Row(
        children:  <Widget>[
        buildTime(),
    ]
    );

  }
  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final days = twoDigits(duration.inDays);
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buildTimeCard(time: days, header: 'Days'),
      const SizedBox(width: 10, ),
      buildTimeCard(time: hours, header: 'HOURS'),
      const SizedBox(width: 8 ),
      buildTimeCard(time: minutes, header: 'MINUTES'),
      const SizedBox(width: 8, ),
      buildTimeCard(time: seconds, header: 'SECONDS'),

    ]);

  }

  Widget buildTimeCard({required String time, required String header}) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Text(
              time,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35),
            ),
          ),
          const SizedBox(height: 24,
          ),
          Text(header, style: const TextStyle(color: Colors.black45)),
        ],
      );



}
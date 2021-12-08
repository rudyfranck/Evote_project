import 'package:evote_app/admin_panel/Component%20/poll_form_values.dart';
import 'package:evote_app/page/widgets/poll/poll_report.dart';
import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:evote_client/graphql/poll.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'add_candidate_form.dart';


class AllPollListCard extends StatelessWidget{
  final GFetchPollData_polls poll;
  const AllPollListCard({Key? key, required this.poll}) : super (key: key);

  void _removePoll(BuildContext context, String pollId){
    final client = GetIt.instance<Client>();
    final id = poll.G_id;
    final deletePollReq = GdeletePollReq(
        (b) => b..vars.id = pollId,
    );

    client.request(deletePollReq).listen((response) {
      final pollReq = GFetchPollReq();
      final cache = client.cache.readQuery(pollReq);
      final updatePoll = GFetchPollData((b){
        return b
            ..polls.addAll(cache?.polls ?? [])
            ..polls.removeWhere((poll) =>poll.G_id == id);
      });
      client.cache.writeQuery(pollReq, updatePoll);
      final data = response.data?.deletePoll;
      final errors = response.graphqlErrors;
      if(data != null){
        ScaffoldMessenger.of(context).showSnackBar(  const SnackBar(
          backgroundColor: Colors.green,
          content: Text("you poll  was deleted successfully",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ));
        Navigator.of(context).pop();
      }else{
        for (var index = 0; index < errors!.length; index++) {
          ScaffoldMessenger.of(context).showSnackBar( SnackBar(
            backgroundColor: Colors.red,
            content: Text(errors[index].message,
              style: const TextStyle(
                  color: Colors.black87
              ),
            ),
          ));
        }
        Navigator.of(context).pop();
      }

    });
  }

  void _addCandidate(BuildContext context, PollFormValues values){
    final client = GetIt.instance<Client>();
    final candidateReq = GaddCandidateReq((b){
      return b
          ..vars.poll_id = poll.G_id
          ..vars.user_email = values.candidate;
    });
    client.request(candidateReq).listen((response){

      final data = response.data?.addCandidate;
      final errors = response.graphqlErrors;
      if(data != null){
        ScaffoldMessenger.of(context).showSnackBar(   SnackBar(
          backgroundColor: Colors.green,
          content: Text("you Candidate " + values.candidate +"  was added successfully in poll",
            style: const TextStyle(
                color: Colors.black
            ),
          ),
        ));
        Navigator.of(context).pop();
      }else{
        for (var index = 0; index < errors!.length; index++) {
          ScaffoldMessenger.of(context).showSnackBar( SnackBar(
            backgroundColor: Colors.red,
            content: Text(errors[index].message,
              style: const TextStyle(
                  color: Colors.black87
              ),
            ),
          ));
        }
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
        color: Colors.grey[300],
            elevation: 3.0,
        child: Slidable(
          endActionPane: ActionPane(
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.add,
                  label: 'Add_Candidate', onPressed: (BuildContext context) {

                showCupertinoModalBottomSheet(
                  expand: false,
                  context: context,
                   builder: (context) => CandidateForm(
                     onSubmit: (values) {
                       _addCandidate(context, values);
                     },
                   ),
                );
              }
              ),
              SlidableAction(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  icon: Icons.report,
                  label: 'Report', onPressed: (BuildContext context) {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => PollReport(poll: poll,),
                );
              }
              ),
            ],
          ),
          startActionPane: ActionPane(
            motion: const BehindMotion(),
            children:  [
              const SlidableAction(
                onPressed: doNothing,
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'edit',
              ),
              SlidableAction(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete', onPressed: (BuildContext context) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('delete "${poll.title}"'),
                      actions:  [
                        CupertinoDialogAction(
                            child:
                            const Text('cancel'),
                            onPressed: (){
                              Navigator.of(context).pop();
                            }
                        ),
                        CupertinoDialogAction(
                            child:
                            const Text('Delete'),
                            onPressed: (){
                             _removePoll(context,poll.G_id);
                            }
                        )
                      ],
                    );
                  },
                );
              }
              ),
            ],
          ),
          child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: Row(
              children:  <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration:  const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/vote.png'),
                        ),
                      )),
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children:  [
                    Text(poll.title,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 17
                    ),
                    ),
                     Text(poll.description,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 11
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        )
        ),
    );
  }
}

void doNothing(BuildContext context) {

}

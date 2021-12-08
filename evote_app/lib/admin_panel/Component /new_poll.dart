import 'package:evote_app/admin_panel/Component%20/poll_form.dart';
import 'package:evote_app/admin_panel/Component%20/poll_form_values.dart';
import 'package:evote_client/polls_client.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class NewPoll extends StatelessWidget {
  const NewPoll({Key? key}) : super(key: key);

  void _addPoll(BuildContext context, PollFormValues values) {
    final client = GetIt.instance<Client>();
    final addPoll = GcreatePollReq((b) {
      return b
        ..vars.input.title = values.title
        ..vars.input.description = values.description
        ..vars.input.duration = values.duration;
    });

    client.request(addPoll).listen((response) {
      //Update cache
      final pollReq = GFetchPollReq();
      final cache = client.cache.readQuery(pollReq);
      final updatePoll = GFetchPollData((b) {
        final map = GFetchPollData_polls.fromJson(
            response.data?.createPoll?.toJson() ?? {});
        b.polls.addAll(cache?.polls ?? []);

        if (map != null) {
          b.polls.add(map);
        }
        return b;
      });
      client.cache.writeQuery(pollReq, updatePoll);
      final data = response.data?.createPoll;
      final errors = response.graphqlErrors;
      if(data != null){
        ScaffoldMessenger.of(context).showSnackBar(  SnackBar(
          backgroundColor: Colors.green,
          content: Text("you poll "+ data.title +" was created successfully",
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
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemPurple,
          middle: Text("Add Poll"),
        ),
        child: CustomScrollView(slivers: [
          SliverSafeArea(
            minimum: const EdgeInsets.all(15),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 6,
              ),
              PollForm(
                onSubmit: (values) {
                  _addPoll(context, values);
                  print(values);
                },
              ),
            ])),
          )
        ]));
  }
}

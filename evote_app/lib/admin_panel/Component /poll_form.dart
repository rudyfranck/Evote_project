import 'package:evote_app/admin_panel/Component%20/poll_form_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PollForm extends StatefulWidget {
  const PollForm({Key? key, required this.onSubmit}) : super(key: key);
  final ValueChanged<PollFormValues> onSubmit;

  @override
  _PollFormState createState() => _PollFormState();
}

class _PollFormState extends State<PollForm> {
  final values = PollFormValues();
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        CupertinoTextField(
          placeholder: "Title",
          padding: const EdgeInsets.all(18),
          onChanged: (value){
            values.title = value;
          },
        ),
        const SizedBox(height: 10,),
        CupertinoTextField(
          placeholder: "Description",
          padding: const EdgeInsets.all(18),
          onChanged: (value){
            values.description = value;
          },
        ),
        const SizedBox(height: 10,),
        CupertinoTextField(
          placeholder: "Duration in days",
          padding: const EdgeInsets.all(18),
          keyboardType: TextInputType.number,
          onChanged: (value){
            values.duration = int.parse(value) ;
          },
        ),


        const SizedBox(height: 40),
        CupertinoButton(
            onPressed: () {
              if(values.title.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("enter Poll Title ",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ));
              }else if(values.description.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("enter Poll Description",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ));
              }else if(values.duration < 1){
                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("Duration must be ar least 1 day",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ));
              }else{
                widget.onSubmit(values);
              }

            },
            child: const Text("Add poll"),
            color: Colors.blue,

            ),
        const SizedBox(height: 40),
       ]
    );
  }
}
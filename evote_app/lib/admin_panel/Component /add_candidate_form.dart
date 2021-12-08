import 'package:evote_app/admin_panel/Component%20/poll_form_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CandidateForm extends StatefulWidget {
  const CandidateForm({Key? key, required this.onSubmit}) : super(key: key);
  final ValueChanged<PollFormValues> onSubmit;

  @override
  _CandidateFormState createState() => _CandidateFormState();
}

class _CandidateFormState extends State<CandidateForm> {
  final values = PollFormValues();
  @override
  Widget build(BuildContext context) {
    return Column(
        children:  [
          CupertinoTextField(
            placeholder: "Candidate Email",
            padding: const EdgeInsets.all(18),
            onChanged: (value){
              values.candidate = value;
            },
          ),

          const SizedBox(height: 40),
          CupertinoButton(
            onPressed: () {
              if(values.candidate.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("enter candidate Email ",
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
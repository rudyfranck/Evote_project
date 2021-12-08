
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoCandidate extends StatelessWidget{
  const NoCandidate({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        const SizedBox(height: 100),
        const Icon(
          CupertinoIcons.square_stack_3d_down_right,
          color: Colors.black12,
          size:  50,
        ),
        const SizedBox(height: 10),
        const Text('Nor Candidate in Poll',
          style: TextStyle(color: Colors.grey),
        ),
        CupertinoButton(
          onPressed: (){
            },
          child:const Text('+ Add a Candidate') ,
        )
      ],
    );
  }
}
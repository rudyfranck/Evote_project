import 'package:evote_app/page/widgets/registration_form_values.dart';
import 'package:evote_app/page/widgets/header_widget.dart';
import 'package:evote_app/page/widgets/registration_form.dart';
import 'package:evote_client/graphql/poll.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RegistrationPage extends  StatelessWidget{
  const RegistrationPage({Key? key}) : super(key: key);

  void _addUser(BuildContext context, RegistrationFormValues values){

      final client = GetIt.instance<Client>();
      final addUserReq = GregisterReq((b){
        return b
          ..vars.input.username = values.username
          ..vars.input.email = values.email
          ..vars.input.password = values.password;
      });
      client.request(addUserReq).listen((response) {
        final data = response.data?.register;
        final errors = response.graphqlErrors;
        if (data != null) {
          ScaffoldMessenger.of(context).showSnackBar( SnackBar(
            backgroundColor: Colors.green,
            content: Text(data.email + "has been register successfully",
              style: const TextStyle(
                  color: Colors.black
              ),
            ),
          ));
          Navigator.of(context).pop();
        } else {

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            RegistrationForm(onSubmit: (values){
              _addUser(context, values) ;
            }),
          ],
        ),
      ),
    );
  }

}
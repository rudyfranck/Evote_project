import 'package:evote_app/page/widgets/login/login_form.dart';
import 'package:evote_app/page/widgets/login/login_form_values.dart';
import 'package:evote_client/polls_client.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:get_it/get_it.dart';
import 'home_page.dart';
import 'widgets/header_widget.dart';



class LoginPage extends StatelessWidget{
     LoginPage({Key? key}): super(key:key);
    final LocalStorage storage =  new LocalStorage('Auth');

   void _login(BuildContext context, LoginFormValues values){
     final client = GetIt.instance<Client>();
     final login = GloginReq((b){
       return b
         ..vars.input.username = values.username
         ..vars.input.password = values.password;
     });
     client.request(login).listen((response)  async {
       final data = response.data?.login?.token;
       final errors = response.graphqlErrors;
       if(data != null){
            //set the token in the storage
           storage.setItem('Token', data);
         ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
           backgroundColor: Colors.green,
           content: Text("you login  successfully",
             style: TextStyle(
                 color: Colors.black
             ),
           ),
         ));
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
       }else{
         var newError = errors?.length ?? 0;
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

  final double _headerHeight = 250;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            LoginForm(onSubmit: (values){
              _login(context, values);
            }),
          ],
        ),
      ),
    );

  }
}
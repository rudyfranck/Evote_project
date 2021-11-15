import 'package:evote_app/common/theme_helper.dart';
import 'package:evote_app/page/widgets/login_form_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../forgot_password_page.dart';
import '../registration_page.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key, required this.onSubmit }) : super(key: key);

  final ValueChanged<LoginFormValues> onSubmit;

  @override
  _LoginFormState createState() => _LoginFormState();

}

class _LoginFormState extends State<LoginForm>{
  final Key _formKey = GlobalKey<FormState>();
  final values = LoginFormValues();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),// This will be the login form
            child: Column(
              children: [
                const Text(
                  'Hello',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Signin into your account',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 30.0),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your user name'),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter your Username";
                              }
                              return null;
                            },
                            onChanged:(value){
                              values.username = value;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),

                        ),
                        const SizedBox(height: 30.0),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                            validator: (val) {
                              if ((val!.isEmpty) && (val.length < 6)) {
                                return "Please enter your password !";
                              }
                              return null;
                            },
                            onChanged:(value){
                              values.password = value;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10,0,10,20),
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push( context, MaterialPageRoute( builder: (context) => const ForgotPasswordPage()), );
                            },
                            child: const Text( "Forgot your password?", style: TextStyle( color: Colors.grey, ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text('Sign In'.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                            onPressed: (){
                              if(values.username.isEmpty){
                                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text("enter your username",
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                ));
                              }else if(values.password.isEmpty){
                                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text("enter your password ",
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                ));
                              }else{
                                widget.onSubmit(values);
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10,20,10,20),
                          //child: Text('Don\'t have an account? Create'),
                          child: Text.rich(
                              TextSpan(
                                  children: [
                                    const TextSpan(text: "Don\'t have an account? "),
                                    TextSpan(
                                      text: 'Create',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage()));
                                        },
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                                    ),
                                  ]
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ],
            )
        ),
      );
  }
}
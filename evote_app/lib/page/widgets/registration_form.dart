import 'package:evote_app/common/theme_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import '../login_page.dart';
import 'registration_form_values.dart';


class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key, required this.onSubmit }) : super(key: key);

  final ValueChanged<RegistrationFormValues> onSubmit;

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final values = RegistrationFormValues();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          alignment: Alignment.center,
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    GestureDetector(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 5, color: Colors.white),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 20,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.grey.shade300,
                              size: 80.0,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(80, 80, 0, 0),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.grey.shade700,
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration('username', 'Enter your username'),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter your Username";
                          } if (val.length < 4){
                            return "you have to enter at least 4 digit !";
                          }
                          return null;
                        },
                        onChanged: (value){
                          values.username = value;
                        },
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      child: TextFormField(
                        decoration: ThemeHelper().textInputDecoration("E-mail address", "Enter your email"),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if(val!.isEmpty){
                            return "Please enter your email address !";
                          } if(!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                            return "Enter a valid email address !";
                          }
                          return null;
                        },
                        onChanged: (value){
                          values.email = value;
                        },
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration("Password*", "Enter your password"),
                        validator: (val) {
                          if ((val!.isEmpty) && (val.length < 6)) {
                            return "Please enter your password !";
                          }if(val.length < 6){
                            return "you have to enter at least 6 digit !";
                          }
                          return null;
                        },
                        onChanged: (value){
                          values.password = value;
                        },
                      ),
                      decoration: ThemeHelper().inputBoxDecorationShaddow(),
                    ),
                    const SizedBox(height: 15.0),
                    FormField<bool>(
                      builder: (state) {
                        return Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Checkbox(
                                    value: checkboxValue,
                                    onChanged: (value) {
                                      setState(() {
                                        checkboxValue = value!;
                                        state.didChange(value);
                                      });
                                    }),
                                const Text("I accept all terms and conditions.", style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                state.errorText ?? '',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                              ),
                            )
                          ],
                        );
                      },
                      validator: (value) {
                        if (!checkboxValue) {
                          return 'You need to accept terms and conditions';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      decoration: ThemeHelper().buttonBoxDecoration(context),
                      child: ElevatedButton(
                        style: ThemeHelper().buttonStyle(),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            "Register".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {


                            widget.onSubmit(values);
                          }

                        },
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    const Text("Or create account using social media",  style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: FaIcon(
                            FontAwesomeIcons.google, size: 35,
                            color: HexColor("#EC2D2F"),),
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ThemeHelper().alartDialog("Google Plus","You tap on GooglePlus social icon.",context);
                                },
                              );
                            });
                          },
                        ),
                        const SizedBox(width: 30.0,),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 5, color: HexColor("#40ABF0")),
                              color: HexColor("#40ABF0"),
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.twitter, size: 23,
                              color: HexColor("#FFFFFF"),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ThemeHelper().alartDialog("Linkedin","You tap on Linkedin social icon.",context);
                                },
                              );
                            });
                          },
                        ),
                        const SizedBox(width: 30.0,),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 5, color: HexColor("#40ABF0")),
                              color: HexColor("#40ABF0"),
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.linkedinIn, size: 23,
                              color: HexColor("#FFFFFF"),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ThemeHelper().alartDialog("Twitter","You tap on Twitter social icon.",context);
                                },
                              );
                            });
                          },
                        ),
                        const SizedBox(width: 30.0,),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 5, color: HexColor("#40ABF0")),
                              color: HexColor("#40ABF0"),
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.whatsapp, size: 23,
                              color: HexColor("#FFFFFF"),),
                          ),
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ThemeHelper().alartDialog("Twitter","You tap on Twitter social icon.",context);
                                },
                              );
                            });
                          },
                        ),
                        const SizedBox(width: 30.0,),
                        GestureDetector(
                          child: FaIcon(
                            FontAwesomeIcons.facebook, size: 35,
                            color: HexColor("#3E529C"),),
                          onTap: () {
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ThemeHelper().alartDialog("Facebook", "You tap on Facebook social icon.",context);
                                },
                              );
                            });
                          },
                        ),

                      ],
                    ),
                    const SizedBox(height: 20.0),
                      Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(text: "I have an account   ",
                                    style: TextStyle(color: Colors.grey.shade300)
                                ),
                                TextSpan(
                                  text: 'Login',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                    },
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                                ),
                              ]
                          )
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
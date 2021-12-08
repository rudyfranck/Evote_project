import 'package:evote_app/page/splash_screen_page.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get_it/get_it.dart';
import 'package:evote_client/polls_client.dart';

void main() {
  GetIt.instance.registerSingleton<Client>(
      initClient('http://192.168.1.34:3000/graphql'));
  runApp( Evote());
}

class Evote extends StatelessWidget {
  Evote({Key? key}) : super(key: key);

  final Color _primaryColor = HexColor('#DC54FE');
  final Color _accentColor = HexColor('#8A02AE');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
     initialRoute: '/',
      routes: {
        '/':(_) => const SplashScreen(title: 'login',),

      },

    );
  }
}

import 'package:evote_app/page/widgets/header_widget.dart';
import 'package:evote_app/page/widgets/my_app_bar.dart';
import 'package:evote_app/page/widgets/nav_bar.dart';
import 'package:evote_app/page/widgets/profile_table.dart';
import 'package:evote_client/polls_client.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:localstorage/localstorage.dart';

class ProfilePage extends StatelessWidget{
   ProfilePage({Key? key}) : super (key: key);
   final LocalStorage storage =  new LocalStorage('Auth');





  @override
  Widget build(BuildContext context){
    //used token in storage
    String token = storage.getItem('Token');
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    final userReq = GFecthUserReq((b){
      return b
        ..vars.id = decodedToken["subject"];
    });
    return Scaffold(
      appBar: MyAppBar(),
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children:[

                  Operation(
                      operationRequest: userReq,
                      builder: (context,
                          OperationResponse<GFecthUserData,GFecthUserVars>? response,
                          Object? error) {
                        if(response!.loading){
                          return const Center(child: CircularProgressIndicator());
                        }
                          final oneUser = response.data!.user;
                          return ProfileTable(user: oneUser);
                         },
                      client: GetIt.instance<Client>(),
                  )

                  //ProfileTable(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
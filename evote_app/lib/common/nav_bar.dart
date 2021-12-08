import 'package:evote_app/admin_panel/all_poll_list.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import '../page/home_page.dart';
import '../page/login_page.dart';
import '../page/profile_page.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final LocalStorage storage =  new LocalStorage('Auth');
  NavBar({Key? key, this.pageInstanceFunction}) : super(key: key);
  var pageInstanceFunction;

  @override
  Widget build(BuildContext context) {
    double  _drawerIconSize = 24;
    double _drawerFontSize = 17;

    return Drawer(child: Container(
        decoration:BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.0, 1.0],
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).accentColor.withOpacity(0.5),
                ]
            )
        ) ,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  colors: [ Theme.of(context).primaryColor,Theme.of(context).accentColor,],
                ),
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Menu",
                  style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, size: _drawerIconSize, color: Theme.of(context).accentColor,),
              title: Text('Home Page', style: TextStyle(fontSize: 17, color: Theme.of(context).accentColor),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
              },
            ),

            Divider(color: Theme.of(context).primaryColor, height: 1,),
            ListTile(
              leading: Icon(Icons.eleven_mp_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
              title: Text('Poll',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
              onTap: () {
                Navigator.push( context, MaterialPageRoute(builder: (context) =>  AllPoll()), );
              },
            ),

            Divider(color: Theme.of(context).primaryColor, height: 1,),
            ListTile(
              leading: Icon(Icons.person, size: _drawerIconSize,color: Theme.of(context).accentColor,),
              title: Text('Profile page',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
              onTap: () {
                Navigator.push( context, MaterialPageRoute(builder: (context) =>  ProfilePage()), );
              },
            ),

            Divider(color: Theme.of(context).primaryColor, height: 1,),
            ListTile(
              leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
              title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
              onTap: () {
                //clear storage
                 storage.clear();
                Navigator.push( context, MaterialPageRoute(builder: (context) =>  LoginPage()), );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


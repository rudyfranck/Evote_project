import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({Key? key, this.pageInstanceFunction}) : super(key: key);
  var pageInstanceFunction;

  @override
  Widget build(BuildContext context) {

    return AppBar(
      title: const Text("Evote",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      elevation: 0.5,
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
            )
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only( top: 16, right: 16,),
          child: Stack(
            children: <Widget>[
              const Icon(Icons.notifications),
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                  constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                  child: const Text( '8', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                ),
              )
            ],
          ),
        )
      ],

    );
        }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


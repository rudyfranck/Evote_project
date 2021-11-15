import 'package:evote_client/polls_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileTable extends StatelessWidget {
  final GFecthUserData_user? user;

  const ProfileTable({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,

          child: SvgPicture.network(
            "https://avatars.dicebear.com/api/male/" + user!.username + ".svg?",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Hello " + user!.username,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        const Text(
          'Voter',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                alignment: Alignment.topLeft,
                child: Text(
                  user!.G__typename + " Information",
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Card(
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ...ListTile.divideTiles(
                            color: Colors.grey,
                            tiles: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 4),
                                leading: const Icon(Icons.person),
                                title: const Text("Name"),
                                subtitle: Text(user!.username),
                              ),
                              ListTile(
                                leading: const Icon(Icons.email),
                                title: const Text("Email"),
                                subtitle: Text(user!.email),
                              ),
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text("Phone"),
                                subtitle: Text(user!.G_id),
                              ),
                              ListTile(
                                leading: Icon(Icons.album_outlined),
                                title: Text("Role"),
                                subtitle: Text(user!.role.name),
                              ),
                              ListTile(
                                leading: const Icon(Icons.stairs),
                                title: const Text("Status"),
                                subtitle: Text(user!.status.toString()),
                              ),
                              const ListTile(
                                leading: Icon(Icons.info),
                                title: Text("About Me"),
                                subtitle: Text("School project"),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

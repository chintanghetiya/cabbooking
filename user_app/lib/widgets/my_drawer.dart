import 'package:flutter/material.dart';
import 'package:user_app/SplashScreen/splash_screen.dart';
import 'package:user_app/global/global.dart';
class MyDrawer extends StatefulWidget {
  String? name;
  String? email;

  MyDrawer({this.name,this.email});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 165,
            color: Colors.white60,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.black87,
                  ),
                  const SizedBox(width: 7,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.name.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                       widget.email.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 12),

          GestureDetector(
            onTap: ()
            {

            },
            child: const ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.white54,
              ),
              title: Text(
                "History",
                  style: TextStyle(
                      color: Colors.white54
                  ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {

            },
            child: const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white54,
              ),
              title: Text(
                "Visit Profile",
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {

            },
            child: const ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white54,
              ),
              title: Text(
                "About",
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
                fAuth.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (c)=> MySplashScreen()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white54,
              ),
              title: Text(
                "Sign out",
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

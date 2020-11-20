import 'package:flutter/material.dart';
import 'package:fyp/Patient/signin_facebook.dart' as auth;

class MainDrawer extends StatelessWidget {
  var img = auth.a.userProfileList[auth.E.photoURL.index];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          auth.a.isLoggedIn
                              ? auth.a.userProfileList[auth.E.photoURL.index] !=
                                      null
                                  ? auth
                                      .a.userProfileList[auth.E.photoURL.index]
                                  : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fflutterappworld.com%2Fa-high-performance-flutter-widget-to-render-bottts-svg-avatars%2F&psig=AOvVaw0pbd2aLdtAYDPZSY8ZCbFK&ust=1605966714142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCODx_sSike0CFQAAAAAdAAAAABAJ'
                              : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fflutterappworld.com%2Fa-high-performance-flutter-widget-to-render-bottts-svg-avatars%2F&psig=AOvVaw0pbd2aLdtAYDPZSY8ZCbFK&ust=1605966714142000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCODx_sSike0CFQAAAAAdAAAAABAJ',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      auth.a.isLoggedIn
                          ? auth.a.userProfileList[auth.E.email.index] != null
                              ? auth.a.userProfileList[auth.E.email.index]
                              : 'abc@gmail.com'
                          : '',
                    ),

                    /*     'Hassan Ahmed',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),*/

                    //),
                  ),
                  Text(
                    auth.a.isLoggedIn
                        ? auth.a.userProfileList[auth.E.username.index] != null
                            ? auth.a.userProfileList[auth.E.username.index]
                            : 'abc@gmail.com'
                        : '',
                  )
                  //  style: TextStyle(
                  //    color: Colors.white,
                  //  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                auth.a.logout(context);
              }),
        ],
      ),
    );
  }
}

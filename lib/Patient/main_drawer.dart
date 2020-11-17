import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
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
                      image: AssetImage('assets/images/myImg.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Hassan Ahmed',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'hassanahmed141947@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}

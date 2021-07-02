import 'package:flutter/material.dart';
import 'package:gully_network_task/util/style.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('Profile details',style: textStyleBack12,),
          ),
          ListTile(
            title: Text('Home',style: textStyleBack12,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('TO DO',style: textStyleBack12,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Summary',style: textStyleBack12,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile',style: textStyleBack12,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

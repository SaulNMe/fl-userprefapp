import 'package:flutter/material.dart';
import 'package:userprefapp/src/pages/home_page.dart';
import 'package:userprefapp/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.pink[600],),
            title: Text('Pages'),
            onTap: (){

              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.alarm, color: Colors.pink[600],),
            title: Text('Alarm'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.face, color: Colors.pink[600],),
            title: Text('Face'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.verified_user, color: Colors.pink[600],),
            title: Text('Verify'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.pink[600],),
            title: Text('Settings'),
            onTap: (){

              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:userprefapp/src/pages/home_page.dart';
import 'package:userprefapp/src/pages/settings_page.dart';
import 'package:userprefapp/src/share_prefs/pref_user.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: prefs.lastPage,
      routes: {
        HomePage.routeName : (BuildContext context) =>  HomePage(),
        SettingsPage.routeName : (BuildContext context) =>  SettingsPage(),

      },
    );
  }
}
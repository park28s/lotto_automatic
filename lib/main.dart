import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lotto_app/main/main_home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lotto AutoMatic Issuance',
      theme: ThemeData(
        fontFamily: 'CookieRun',
        appBarTheme: AppBarTheme(color: Colors.white, elevation: 0
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainHome(),
    );
  }
}

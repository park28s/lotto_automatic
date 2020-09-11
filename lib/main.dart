import 'package:flutter/material.dart';
import 'package:lotto_app/login/login_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Lotto AutoMatic Issuance',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.lightBlue,
          appBarTheme: AppBarTheme(
            color: Colors.lightBlue, elevation: 0
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginHome(),

    );
  }
}

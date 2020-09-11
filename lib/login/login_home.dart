import 'package:flutter/material.dart';
import 'package:lotto_app/login/login_widget.dart';

class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
        children: [
          buildEmailTF(),
          buildPasswordTF(),
          buildForgotPasswordBtn(),
          buildRememberMecheckbox(),
          buildLoginBtn(),
        ],

        ),
      )
        );

  }
}
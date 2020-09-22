import 'package:flutter/material.dart';
import 'package:lotto_app/login/login_widget.dart';

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Expanded(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '로그인',
                      style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'OpenSans',
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildEmailTF(),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildPasswordTF(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildNewAndPasswordBtn(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildRememberMecheckbox(),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 100),
                      child: buildLoginBtn(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildSignInWithText(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildSocialBtnRow(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: buildSingnupBtn(context),
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  }
}
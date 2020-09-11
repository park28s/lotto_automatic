import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lotto_app/login/login_widget.dart';

class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                // 첫번째 컨테이너가 뒤로 깔린다. 즉 배경 크기와 색깔을 지정하는것.
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff73aef5),
                    Color(0xff61a4f9),
                    Color(0xff478de0),
                    Color(0xff398ae5),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                )),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            fontFamily: 'OpenSans'),
                      ),
                      SizedBox(height: 30.0),
                      buildEmailTF(),
                      SizedBox(height: 30.0),
                      buildPasswordTF(),
                      buildForgotPasswordBtn(),
                      buildRememberMecheckbox(),
                      buildLoginBtn(),
                      buildSignInWithText(),
                      buildSocialBtnRow(),
                      buildSingnupBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

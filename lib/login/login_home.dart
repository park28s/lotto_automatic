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
                  color: Color(0xff398ae5)
                ),
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
                        '로그인',
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
                      buildNewAndPasswordBtn(),
                      buildRememberMecheckbox(),
                      buildLoginBtn(),
                      SizedBox(height: 20.0),
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

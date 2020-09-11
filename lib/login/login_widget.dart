import 'package:flutter/material.dart';
import 'package:lotto_app/login/style.dart';

bool rememberMe = false;

Widget buildEmailTF() {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Email',
          style: kLabelStyle,
        ),
      ),
      SizedBox(
        height: 4.0,
      ),
      Container(
        decoration: kBoxDecorationStyle,
        alignment: Alignment.centerLeft,
        height: 50.0,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle),
        ),
      ),
    ],
  );
}

Widget buildPasswordTF() {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Password',
          style: kLabelStyle,
        ),
      ),
      SizedBox(
        height: 4.0,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 50.0,
        child: TextFormField(
            obscureText: true,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 13.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Enter your Password',
                hintStyle: kHintTextStyle)),
      ),
    ],
  );
}

Widget buildForgotPasswordBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      child: Text(
        'Forgot Password?',
        style: kLabelStyle,
      ),
      onPressed: () {},
    ),
  );
}

Widget buildRememberMecheckbox() {
  return Container(
    height: 20.0,
    child: Row(
      children: [
        Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: rememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  rememberMe = value;
                })),
        Text(
          'Remember me',
          style: kLabelStyle,
        )
      ],
    ),
  );
}

Widget buildLoginBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    child: RaisedButton(
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Color(0xff527daa),
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
        onPressed: () {}),
  );
}

Widget buildSignInWithText() {
  return Column(
    children: [
      Text(
        '- OR -',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      Text(
        'Sign in with',
        style: kLabelStyle,
      )
    ],
  );
}

Widget buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
          ],
          image: DecorationImage(
            image: logo,
          )),
    ),
  );
}

Widget buildSocialBtnRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildSocialBtn(
                () => print('Login with Facebook'),
            AssetImage('assets/logos/facebook.jpg')),
        buildSocialBtn(
          () => print('Login with Google'),
          AssetImage('assets/logos/google.jpg'),
        ),
      ],
    ),
  );
}

Widget buildSingnupBtn() {
  return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an Account?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ))
        ]),
      ));
}
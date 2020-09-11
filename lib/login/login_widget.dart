import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lotto_app/login/style.dart';

bool rememberMe = false;

Widget buildEmailTF() {
  return Column(
    children: [
      Text(
        'Email',
        style: kLabelStyle,
      ),
      SizedBox(
        height: 10.0,
      ),
      Container(
        decoration: kBoxDecorationStyle,
        alignment: Alignment.centerLeft,
        height: 60.0,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
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
      Text(
        'Password',
        style: kLabelStyle,
      ),
      SizedBox(
        height: 10.0,
      ),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0,
        child: TextFormField(
            obscureText: true,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
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
    padding: EdgeInsets.symmetric(vertical: 25.0),
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
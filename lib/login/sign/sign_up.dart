import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
        title: 'Sign Up',
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    '회원 가입',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'CookieRun'),
                  ),
                  leading: IconButton(
                      icon:
                          Icon(Icons.arrow_back, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                body: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 120.0),
                        Container(
                          alignment: Alignment.center,
                          height: size.height * 0.09,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Text(
                            '" 회원 아이디가 없으신가요?',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 30.0,
                                fontFamily: 'CookieRun'),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: size.height * 0.09,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Text(
                            'Email 만 입력 하세요 "',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 30.0,
                                fontFamily: 'CookieRun'),
                          ),
                        ),
                        SizedBox(height: 30),
                        RegisterPage(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 13.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(color: Colors.blue, width: 1)
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                hintText: '이메일을 적어주세요',
                hintStyle: TextStyle(color: Colors.blueAccent, fontFamily: 'CookieRun', fontSize: 12, letterSpacing: 4))),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lotto_app/login/login_home.dart';
import 'package:lotto_app/main/bottom_nav_bar.dart';
import 'file:///D:/flutter_project/lotto_app/lib/main/category_card.dart';
import 'package:lotto_app/main/constants.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xff398ae5),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 52,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2.0,
                              offset: Offset(0, 0))
                        ],
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        iconSize: 37.0,
                          icon: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginHome()),
                          );
                          }
                          ),
                    )),
                Container(
                  alignment: Alignment.center,
                  child: Text("이번주 로또 당첨 번호",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontFamily: 'CooKieRun'
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                LottoNumber(),
                SizedBox(
                  height: 60,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(
                        title: '몰라 귀찮아!',
                        title1: '완전 자동',
                        //svgSrc: 'assets/icons/Hamburger.svg',
                        press: () {},
                      ),
                      CategoryCard(
                        title: '끔에 숫자가 보인거 같아!',
                        title1: '원하는 수 포함/제외',
                        //svgSrc: 'assets/icons/Hamburger.svg',
                        press: () {},
                      ),
                      CategoryCard(
                        title: '설마.. 또 나오겠어?',
                        title1: '역대 당첨번호는 제외',
                        //svgSrc: 'assets/icons/Hamburger.svg',
                        press: () {},
                      ),
                      CategoryCard(
                        title: '내가 찍은 번호지만 불안해!',
                        title1: '구입목록 번호제외',
                        //svgSrc: 'assets/icons/Hamburger.svg',
                        press: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}


Widget LottoNumber() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Num 1"),
      Text("Num 2"),
      Text("Num 3"),
      Text("Num 4"),
      Text("Num 5"),
      Text("Num 6"),
    ],
  );
}

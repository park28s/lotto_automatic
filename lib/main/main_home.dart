import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lotto_app/login/login_home.dart';
import 'package:lotto_app/main/mainwidget/main_item.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _current = 0;
  final List list = [con1, con2, con3];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: GFAppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
        title: Text(
          '로또의 신',
          style: TextStyle(fontSize: 30.0, color: Colors.blue),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.lightBlue),
            child: Expanded(
                child: Column(children: [
              Row(
                children: [
                  Container(
                    // 1번째 컨테이너
                    height: size.height * 0.06,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: IconButton(
                        icon: Icon(
                          Icons.account_circle,
                          size: 36,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginHome()),
                          );
                        }),
                  )
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Container(
                    // 2번째 컨테이너
                    height: size.height * 0.03,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: Text('로그인해주세요',
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    // 3번째 컨테이너
                    height: size.height * 0.09,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: GFButton(
                      type: GFButtonType.outline2x,
                      color: Colors.white,
                      shape: GFButtonShape.pills,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle,
                              size: 29, color: Colors.white),
                          Text(
                            '마이페이지',
                            style: TextStyle(fontFamily: 'CookieRun'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    // 4번째 컨테이너
                    height: size.height * 0.09,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: GFButton(
                      type: GFButtonType.outline2x,
                      color: Colors.white,
                      shape: GFButtonShape.pills,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.store, size: 29, color: Colors.white),
                          Text(
                            '로또판매점',
                            style: TextStyle(fontFamily: 'CookieRun'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    // 5번째 컨테이너
                    height: size.height * 0.09,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: GFButton(
                      type: GFButtonType.outline2x,
                      color: Colors.white,
                      shape: GFButtonShape.pills,
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chat, size: 29, color: Colors.white),
                          Text(
                            '당첨 후기',
                            style: TextStyle(fontFamily: 'CookieRun'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ])),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.drafts, color: Colors.white),
            ),
            title: Text('공지사항 & 이용방법'),
            subtitle: Text('이용방법을 잘 모르시면 눌러 주세요'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.headset_mic, color: Colors.white),
            ),
            title: Text('고객센터'),
            subtitle: Text('궁금하신은 점은 고객센터로~'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.settings, color: Colors.white),
            ),
            title: Text('환경설정'),
            subtitle: Text('당첨알림, 추천번호 자동알림 설정'),
            onTap: () {},
          ),
        ],
      )),
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width * 0.835,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue),
          ),
          SizedBox(height: 20),
          Container(
            height: size.height * 0.08,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Center(
              child: Text('Google AD banner',
                  style: TextStyle(color: Colors.white, fontSize: 30.0)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  initialPage: 0,
                  height: size.height * 0.2,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: [con1(), con2(), con3()],
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map(list, (index, item) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.black : Colors.red),
                );
              })),
          Container(
              width: size.width * 0.85,
              height: size.height * 0.18,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GFButton(
                              child: Text(
                                '역대 당첨번호 통계',
                                style: TextStyle(
                                    fontFamily: 'CookieRun',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800),
                              ),
                              size: GFSize.LARGE,
                              type: GFButtonType.outline2x,
                              color: Colors.lightBlue,
                              onPressed: () {}),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: GFButton(
                              child: Text(
                                'QR 코드 확인',
                                style: TextStyle(
                                    fontFamily: 'CookieRun',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              size: GFSize.LARGE,
                              type: GFButtonType.outline2x,
                              color: Colors.indigoAccent,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GFButton(
                            child: Text(
                              '어플에서 당첨 통계',
                              style: TextStyle(
                                  fontFamily: 'CookieRun',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800),
                            ),
                            size: GFSize.LARGE,
                            type: GFButtonType.outline2x,
                            color: Colors.orange,
                            onPressed: () {}),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: GFButton(
                            child: Text(
                              '당첨 판매점',
                              style: TextStyle(
                                  fontFamily: 'CookieRun',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                            size: GFSize.LARGE,
                            type: GFButtonType.outline2x,
                            color: Colors.redAccent,
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}

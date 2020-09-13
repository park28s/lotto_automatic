import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      height: 70,
      color: Color(0xff398ae5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: '홈으로   가기',
            press: () {
              print('7777');
            },
          ),
          BottomNavItem(
            title: '당첨번호통계',
            press: () {
              print('7777');
            },
          ),
          BottomNavItem(
            title: 'QR코드 확인',
            press: () {
              print('7777');
            },
          ),
          BottomNavItem(
            title: '당첨     판매점',
            press: () {
              print('7777');
            },
          ),
          BottomNavItem(
            title: '당첨번호통계',
            press: () {
              print('7777');
            },
          ),
          BottomNavItem(
            title: '이용방법 공지사항',
            press: () {
              print('7777');
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final Function press;

  const BottomNavItem({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          alignment: Alignment.center,
          height: 65,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0,
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 0))
            ],
            color: Colors.blue,
          ),
          child: Text(
            (title),
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'CooKieRun', fontSize: 15.0, color: Colors.white70),
          ),
        ));
  }
}

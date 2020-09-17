import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:getwidget/getwidget.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _current = 0;
  List list = [con1, con2, con3];

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
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                '로또의 신',
                style: TextStyle(fontSize: 30.0, color: Colors.blue),
              ),
              leading: Icon(
                Icons.menu,
                color: Colors.blue,
                size: 35.0,
              ),
            ),
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
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _current == index ? Colors.black : Colors.red),
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
                                    child: Text('역대 당첨번호 통계',
                                    style: TextStyle(
                                      fontFamily: 'CookieRun',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800
                                    ),
                                    ),
                                    size: GFSize.LARGE,
                                    type: GFButtonType.outline2x,
                                    color: Colors.lightBlue,
                                    onPressed: () {}),
                              ),
                              SizedBox(width: 10.0),
                              Expanded(
                                child: GFButton(
                                    child: Text('QR 코드 확인',
                                      style: TextStyle(
                                          fontFamily: 'CookieRun',
                                          fontSize: 20,
                                        fontWeight: FontWeight.w800
                                      ),
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
                                  child: Text('어플에서 당첨 통계',
                                    style: TextStyle(
                                        fontFamily: 'CookieRun',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800
                                    ),
                                  ),
                                  size: GFSize.LARGE,
                                  type: GFButtonType.outline2x,
                                  color: Colors.orange,
                                  onPressed: () {}),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: GFButton(
                                  child: Text('당첨 판매점',
                                    style: TextStyle(
                                        fontFamily: 'CookieRun',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800
                                    ),
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
            )));
  }
}

Widget con1() {
  return Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.blue,
  ));
}

Widget con2() {
  return Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.black,
  ));
}

Widget con3() {
  return Container(
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.red,
  ));
}

/*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map(list, (index, item) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Colors.black
                            : Colors.red
                      ),
                    );
                  })
                )*/

/*body: Container(
          height: size.height * 0.17,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
              Padding(padding: EdgeInsets.all(15.00)),
              Container(
                width: size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
              ),
              Padding(padding: EdgeInsets.all(15.00)),
              Container(
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

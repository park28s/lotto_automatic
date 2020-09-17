import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _current = 0;

  List list = [con1(), con2(), con3()];
  //Key key;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                        enableInfiniteScroll: true,
                        initialPage: 0,
                        height: 150,
                        enlargeCenterPage: true,
                        viewportFraction: 0.85),
                    items: [con1(), con2(), con3()],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map(list, (index, list) {
                    var index = List().toList();
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Colors.yellowAccent
                            : Colors.red
                      ),
                    );
                  })
                )
              ],
            );
  }
}




Widget con1() {
  return Container(
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ));
}

Widget con2() {
  return Container(
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.yellowAccent,
      ));
}

Widget con3() {
  return Container(
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ));
}

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

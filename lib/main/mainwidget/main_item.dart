import 'package:flutter/material.dart';

Widget con1() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue,
    ),
    child: Center(
      child: Text(
        '몰라 귀찮아!\n★완전자동★',
        style: TextStyle(fontSize: 40.0, color: Colors.white),
      ),
    ),
  );
}

Widget con2() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.indigoAccent,
    ),
    child: Center(
      child: Text(
        '꿈에 숫자가 보인거 같아!\n★원하는 수 포함/제외★',
        style: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
    ),
  );
}

Widget con3() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
    ),
    child: Center(
      child: Text(
        '내가 찍은 번호지만 불안해!\n  ★구입 목록 번호 제외★',
        style: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
    ),
  );
}

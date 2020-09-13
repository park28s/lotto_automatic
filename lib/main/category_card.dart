import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lotto_app/main/constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;

  const CategoryCard({Key key, this.svgSrc, this.title, this.press})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 2.0,
                offset: Offset(0, 0)
            )
          ]
           ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

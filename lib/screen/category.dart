import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_management/screen/constant.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String? title;
  final Function? press;
  const CategoryCard({
    Key? key,
    required this.svgSrc,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 14, 165, 224),
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
              //color: Colors.red,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            // onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  SvgPicture.asset(svgSrc),
                  const Spacer(),
                  Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
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

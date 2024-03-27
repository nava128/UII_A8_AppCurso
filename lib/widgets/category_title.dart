import 'package:flutter/material.dart';
import 'package:navacurso/constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;

  const CategoryTitle(
      {Key? key, required this.leftText, required this.rightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: kFont),
          ),
          Text(
            rightText,
            style: TextStyle(fontSize: 16, color: kFontLight),
          ),
        ],
      ),
    );
  }
}

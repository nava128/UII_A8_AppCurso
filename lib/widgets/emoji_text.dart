import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  const EmojiText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 25),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'deja que aumente tu \npoder cerebral',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black)),
            TextSpan(text: '✨', style: TextStyle(fontSize: 26))
          ]),
        ));
  }
}

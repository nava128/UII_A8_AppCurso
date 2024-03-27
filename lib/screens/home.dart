import 'package:flutter/material.dart';
import 'package:navacurso/constants/colors.dart';
import 'package:navacurso/widgets/emoji_text.dart';
import 'package:navacurso/widgets/feature_course.dart';
import 'package:navacurso/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [EmojiText(), SearchInput(), FeatureCourse()],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackround,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "Hola Eliseo!",
          style: TextStyle(fontSize: 16, color: kFontLight),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 20,
              ),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(color: kAccent, shape: BoxShape.circle),
              ),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navacurso/widgets/category_title.dart';
import 'package:navacurso/widgets/course_item.dart';
import 'package:navacurso/models/course.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCorses();
  FeatureCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle(
              leftText: "Lo mejor de la semana", rightText: "ver todo"),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) =>
                  CourseItem(course: coursesList[index]),
              separatorBuilder: (context, index) => SizedBox(
                width: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}

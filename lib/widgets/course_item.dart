import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navacurso/constants/colors.dart';
import 'package:navacurso/models/course.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        course.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  course.authorImg,
                                  width: 20,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                course.author,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                course.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: kFont),
                              ),
                              //todo nokta :D hahah
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: kFontLight, shape: BoxShape.circle),
                              ),
                              Text(
                                '2h 22min',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: kFontLight),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 60,
              right: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {},
                child: Text('Empezar'),
              ))
        ],
      ),
    );
  }
}

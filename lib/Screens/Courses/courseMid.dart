import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Shared/components.dart';
import 'courseBegin.dart';
import 'courseClass.dart';
import 'courseHigh.dart';
import 'coursePrimary.dart';

class CourseMidScreen extends StatelessWidget {
  const CourseMidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x7f2755a6),
        actions: [
          Image.asset(
            "assets/logo.png",
            width: 100,
          )
        ],
        elevation: 0,
        title: Center(child: Text("الدورات")),
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: 100,
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                        padding: const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                        decoration: BoxDecoration(
                          color: Color(0x0c2755a6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: SizedBox(
                              width: 90,
                              height: 70.82,
                              child: Image.asset(
                                "assets/courses.png",
                                width: 100,
                                height: 100,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 232, 229, 229)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),

                                      //primary level
                                      child: GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                              context, CoursePrimaryScreen());
                                        },
                                        child: Container(
                                            // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                            margin:
                                                EdgeInsets.fromLTRB(5, 0, 5, 5),
                                            width: 140,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                // color: Color(0xff2755a6),
                                                color: Colors.white),
                                            child: Center(
                                              child: Text(
                                                'المرحلة الابتدائية',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.1764705882,
                                                  letterSpacing: -0.5,
                                                  color: Color(0xff2755a6),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),

                                      // High level screen
                                      child: GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                              context, CourseHighScreen());
                                        },
                                        child: Container(
                                            // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                            margin:
                                                EdgeInsets.fromLTRB(5, 0, 5, 5),
                                            width: 140,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.white),
                                            child: Center(
                                              child: Text(
                                                ' المرحلة الثانوية',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.1764705882,
                                                  letterSpacing: -0.5,
                                                  color: Color(0xff2755a6),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      //begining screen
                                      child: GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                              context, CourseBeginScreen());
                                        },
                                        child: Container(
                                            // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                            margin:
                                                EdgeInsets.fromLTRB(5, 0, 5, 5),
                                            width: 140,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.white),
                                            child: Center(
                                              child: Text(
                                                "مرحلة التأسيس",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.1764705882,
                                                  letterSpacing: -0.5,
                                                  color: Color(0xff2755a6),
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),

                                      //midlevel screen
                                      child: GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                              context, CourseMidScreen());
                                        },
                                        child: Container(
                                            // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                            margin:
                                                EdgeInsets.fromLTRB(5, 0, 5, 5),
                                            width: 140,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              // color: Colors.white),
                                              color: Color(0xff2755a6),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'المرحلة المتوسطة',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.1764705882,
                                                    letterSpacing: -0.5,
                                                    color: Colors.white

                                                    // color: Color(0xff2755a6),
                                                    ),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Expanded(
                          child: Container(
                              width: double.infinity,
                              //height: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 236, 237, 246),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 5),
                                      color: Colors.blue.withOpacity(.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ]),
                              child: Column(children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Row(children: [
                                      SizedBox(
                                        width: 260,
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: const Text(
                                          "المرحلة",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 4, 109, 195),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        navigateTo(
                                            context, CourseClassScreen());
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                        // width: 140,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          "الصف الاول",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1764705882,
                                              letterSpacing: -0.5,
                                              color: Colors.black
                                              // color: Color(0xff2755a6),
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        navigateTo(
                                            context, CourseClassScreen());
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                        // width: 140,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          "الصف الثاني",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1764705882,
                                              letterSpacing: -0.5,
                                              color: Colors.black
                                              // color: Color(0xff2755a6),
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        navigateTo(
                                            context, CourseClassScreen());
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                        // width: 140,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          "الصف الثالث",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1764705882,
                                              letterSpacing: -0.5,
                                              color: Colors.black
                                              // color: Color(0xff2755a6),
                                              ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ])),
                        ))
                  ])))),
    );
  }
}

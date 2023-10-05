import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Shared/components.dart';
import '../Courses/courseScreen.dart';

class StudentClassScreen extends StatelessWidget {
  const StudentClassScreen({super.key});

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
        title: Center(child: Text("الطالب")),
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(30),
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
                                "assets/student.png",
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
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                            width: double.infinity,
                            height: 200,
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
                                        "الفصل",
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
                                      navigateTo(context, CourseScreen());
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                      // width: 140,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "الفصل الاول",
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
                                      navigateTo(context, CourseScreen());
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                      // width: 140,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "الفصل الثاني",
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
                            ])))
                  ])))),
    );
  }
}

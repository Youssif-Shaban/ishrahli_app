import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Layout/layoutCubit/layoutStates.dart';
import '../../Layout/layoutCubit/layoutcubit.dart';
import '../../Login/loginScreen.dart';
import '../../Shared/components.dart';
import '../../layout/layoutScreen.dart';
import '../../models/coursesModel.dart';
import 'courseDetails.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutCubit.get(context).getCourses();
    CoursesModel coursesModel;
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) => {},
      builder: (context, state) {
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
          body: SafeArea(
              child: Center(
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 100,
                  // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                  padding: const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                  decoration: BoxDecoration(
                    color: Color(0x0c2755a6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    // framehT5 (132:3413)
                    child: SizedBox(
                        width: 90,
                        height: 60.82,
                        child: Image.asset(
                          "assets/courses.png",
                          width: 100,
                          height: 100,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              if (state is CourseLoadingState) LinearProgressIndicator(),
              if (state is CourseSuccessState)
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CDetail(
                                              cc: LayoutCubit.get(context)
                                                  .coursemodel
                                                  .data![index],
                                            )));
                              },
                              child: buildcourseItem(
                                  LayoutCubit.get(context)
                                      .coursemodel
                                      .data![index],
                                  context),
                            ),
                        separatorBuilder: (context, index) => myDivider(),
                        itemCount:
                            LayoutCubit.get(context).coursemodel.data!.length))
            ]),
          )),
        );
      },
    );
  }

  Widget buildcourseItem(CourseData ttmodel, context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.only(right: 10),
          height: 240,
          width: 320,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 234, 232, 232),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ttmodel.slug,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              ttmodel.price.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 1, 49, 88),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "KWD",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 1, 49, 88),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateTo(context, LoginScreen());
                          },
                          child: Container(
                              // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                              margin: EdgeInsets.fromLTRB(16, 0, 16, 37),
                              width: 200,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                  begin: Alignment(-1.064, -2.583),
                                  end: Alignment(1, 2.125),
                                  colors: <Color>[
                                    Color(0xff2755a6),
                                    Color(0xffffc700)
                                  ],
                                  stops: <double>[0.592, 1],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'تسجيل',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1764705882,
                                    letterSpacing: -0.5,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      );
}

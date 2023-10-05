import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ishrahli_app1/Screens/Student/highLevel.dart';
import '../../Login/loginScreen.dart';
import '../../Shared/components.dart';
import '../../network/local/cache_helper.dart';
import '../Book/bookScreen.dart';
import '../Cart/cartScreen.dart';
import '../Courses/courseBegin.dart';
import '../Courses/courseScreen.dart';
import '../Profile/profileScreen.dart';
import '../Student/studentScreen.dart';
import '../baqas/baqa/baqa.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    token = CacheHelper.getData(key: 'token');

    var searchController = TextEditingController();

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
        leading: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              child: const Icon(Icons.list),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                navigateTo(context, CartScreen());
              },
              child: Container(
                width: 5,
                height: 50,
                child: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    //cart Item
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, CartScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            padding:
                                const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(11, 128, 140, 160),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              // framehT5 (132:3413)
                              child: SizedBox(
                                  width: 90,
                                  height: 70.82,
                                  child: Image.asset(
                                    "assets/baqa2.png",
                                    width: 100,
                                    height: 100,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Container(
                            // autogroupopm1DZZ (CaiQ78UnBrb7bydSJ9oPm1)
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 120, 163, 236),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'الباقات',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333,
                                  letterSpacing: -0.5,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    //Book item

                    GestureDetector(
                      onTap: () {
                        navigateTo(context, BookScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            padding:
                                const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                            decoration: BoxDecoration(
                              color: const Color(0x0c2755a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              // framehT5 (132:3413)
                              child: SizedBox(
                                  width: 90,
                                  height: 70.82,
                                  child: Image.asset(
                                    "assets/book.png",
                                    width: 100,
                                    height: 100,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Container(
                            // autogroupopm1DZZ (CaiQ78UnBrb7bydSJ9oPm1)
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 120, 163, 236),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'المذكرات',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333,
                                  letterSpacing: -0.5,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    //student item
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const HighLevelScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            padding:
                                const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                            decoration: BoxDecoration(
                              color: Color(0x0c2755a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              // framehT5 (132:3413)
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
                          const SizedBox(
                            height: 9,
                          ),
                          Container(
                            // autogroupopm1DZZ (CaiQ78UnBrb7bydSJ9oPm1)
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 120, 163, 236),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'الطالب',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333,
                                  letterSpacing: -0.5,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, CartScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            padding:
                                const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                            decoration: BoxDecoration(
                              color: const Color(0x0c2755a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              // framehT5 (132:3413)
                              child: SizedBox(
                                  width: 90,
                                  height: 70.82,
                                  child: Image.asset(
                                    "assets/live.png",
                                    width: 100,
                                    height: 100,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Container(
                            // autogroupopm1DZZ (CaiQ78UnBrb7bydSJ9oPm1)
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 120, 163, 236),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'الحصص المباشرة',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333,
                                  letterSpacing: -0.5,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        // navigateTo(context, qodoratScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            padding:
                                const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                            decoration: BoxDecoration(
                              color: const Color(0x0c2755a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              // framehT5 (132:3413)
                              child: SizedBox(
                                  width: 90,
                                  height: 70.82,
                                  child: Image.asset(
                                    "assets/qodorat.png",
                                    width: 100,
                                    height: 100,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Container(
                            // autogroupopm1DZZ (CaiQ78UnBrb7bydSJ9oPm1)
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 120, 163, 236),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'القدرات',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333,
                                  letterSpacing: -0.5,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const CourseBeginScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                            padding:
                                const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
                            decoration: BoxDecoration(
                              color: const Color(0x0c2755a6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              // framehT5 (132:3413)
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
                          const SizedBox(
                            height: 9,
                          ),
                          Container(
                            // autogroupopm1DZZ (CaiQ78UnBrb7bydSJ9oPm1)
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 120, 163, 236),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'الدورات',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333,
                                  letterSpacing: -0.5,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "تصفح افضل الباقات عندنا",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, BaqaDetailScreen());
                      },
                      child: Container(
                        width: 160,
                        height: 150,
                        color: Color.fromARGB(255, 240, 238, 238),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/baqa.png",
                                  width: 130,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "باقة كورسات الصف التاسع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " الفصل الاول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, BaqaDetailScreen());
                      },
                      child: Container(
                        width: 160,
                        height: 150,
                        color: Color.fromARGB(255, 240, 238, 238),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/baqa.png",
                                  width: 130,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "باقة كورسات الصف التاسع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " الفصل الاول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "تصفح افضل الكورسات عندنا",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, BaqaDetailScreen());
                      },
                      child: Container(
                        width: 160,
                        height: 170,
                        color: Color.fromARGB(255, 240, 238, 238),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/course2.png",
                                  width: 130,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "باقة كورسات الصف التاسع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " الفصل الاول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, BaqaDetailScreen());
                      },
                      child: Container(
                        width: 160,
                        height: 170,
                        color: Color.fromARGB(255, 240, 238, 238),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/course2.png",
                                  width: 130,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "باقة كورسات الصف التاسع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " الفصل الاول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "تصفح افضل المذكرات عندنا",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, BaqaDetailScreen());
                      },
                      child: Container(
                        width: 160,
                        height: 190,
                        color: Color.fromARGB(255, 240, 238, 238),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/book2.png",
                                  width: 130,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "باقة كورسات الصف التاسع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " الفصل الاول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        //navigateTo(context, BaqaDetailScreen());
                      },
                      child: Container(
                        width: 160,
                        height: 190,
                        color: Color.fromARGB(255, 240, 238, 238),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: Image.asset(
                                  "assets/book2.png",
                                  width: 130,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "باقة كورسات الصف التاسع",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " الفصل الاول",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      CacheHelper.deleteItem(key: 'token').then((value) {
                        if (value) {
                          navigateTo(context, LoginScreen());
                        }
                      });
                    },
                    child: Text(
                      "Sign Out",
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

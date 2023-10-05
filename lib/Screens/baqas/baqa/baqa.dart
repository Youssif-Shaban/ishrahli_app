import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class baqaScreen extends StatelessWidget {
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
        title: Center(
            child: Text(
          "الباقات",
          style: TextStyle(fontSize: 17),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
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
                      height: 70.82,
                      child: Image.asset(
                        "assets/baqa2.png",
                        width: 100,
                        height: 100,
                      )),
                ),
              ),
            ),
            const SizedBox(
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
                              child: Container(
                                  // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  width: 160,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
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
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  width: 160,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
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
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  width: 160,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
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
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  width: 160,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'المرحلة المتوسطة',
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                // autogroup5twr8Md (CakARC19NXBNT3Bcw15twR)
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                padding: EdgeInsets.fromLTRB(15, 15, 12.5, 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupd1fmDdy (CakAZmbBbnYgZZYj23d1FM)
                        margin: EdgeInsets.fromLTRB(0, 0, 2.5, 9),
                        width: 250,
                        height: 181,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          // group39YRM (294:2994)
                          width: double.infinity,
                          height: 180,
                          child: Stack(
                            children: [
                              Positioned(
                                // hZ9 (294:2995)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 313,
                                    height: 180,
                                    child: Image.asset(
                                      "assets/baqa.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle4537D (294:2996)
                                left: 36.951385498,
                                top: 146.0002441406,
                                child: Align(
                                  child: SizedBox(
                                    width: 247.79,
                                    height: 34,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // MNo (294:2997)
                                left: 53.5,
                                top: 147,
                                child: Align(
                                  child: SizedBox(
                                    width: 98,
                                    height: 20,
                                    child: Text(
                                      'الصف الثالث',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                        height: 1.1764705882,
                                        letterSpacing: -0.5,
                                        color: Color(0xffffc509),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroupc8qmTAw (CakAgGQMjaXvqmHB2VC8qm)
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // PaP (294:2999)
                              margin: EdgeInsets.fromLTRB(0, 0, 60.5, 0),
                              child: Text(
                                'الصف الثالث',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6666666667,
                                  letterSpacing: -0.5,
                                  color: Color(0xff858585),
                                ),
                              ),
                            ),
                            Text(
                              // gpP (294:2998)
                              'باقة كورسات الصف الثالث الفصل الأول ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                height: 1.5384615385,
                                letterSpacing: -0.5,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          // autogroupbhtmQEb (CakAm6beCCDXFi76a3bHTm)
                          margin: EdgeInsets.fromLTRB(0, 0, 2.5, 0),
                          width: double.infinity,
                          height: 22,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // kwdjGs (294:3003)
                                  margin: EdgeInsets.fromLTRB(0, 0, 202, 0),
                                  child: Text(
                                    '60 KWD',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5384615385,
                                      letterSpacing: -0.5,
                                      color: Color(0xff2755a6),
                                    ),
                                  ),
                                ),
                                Container(
                                    // group32Swy (294:3000)
                                    width: 62,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Stack(children: [
                                      Positioned(
                                        // rectangle32Bef (294:3001)
                                        left: 0,
                                        top: 2,
                                        child: Align(
                                          child: SizedBox(
                                            width: 62,
                                            height: 20,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Color(0xffffc509),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // JzB (294:3002)
                                        left: 7,
                                        top: 0,
                                        child: Align(
                                          child: SizedBox(
                                            width: 51,
                                            height: 20,
                                            child: Text(
                                              'فصل دراسي ',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                height: 2,
                                                letterSpacing: -0.5,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]))
                              ]))
                    ]))
          ],
        ),
      ),
    );
  }
}

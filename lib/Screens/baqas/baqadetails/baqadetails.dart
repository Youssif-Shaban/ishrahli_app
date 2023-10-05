import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../../Shared/components.dart';
import '../../../layout/layoutScreen.dart';

class BaqaDetailScreen extends StatelessWidget {
  const BaqaDetailScreen({super.key});

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
        title: Text("baqa details"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                  // autogroup7sww8nb (CakNnFa1P3bFPG6uYH7sWw)
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 15),
                  width: double.infinity,
                  height: 189,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3f2755a6),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    // group39a8o (79:790)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/baqa.png")),
                    ),
                  )),
              Container(
                alignment: Alignment.topRight,
                child: const Text(
                  "باقة كورسات الصف العشر الفصل الاول",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.topRight,
                child: const Text(
                  "تضم الباقة المواد: لغة عربية- لغة انجليزية - رياضيات - كيمياء",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  "الصف العشر الفصل الاول",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  " 60 KWD",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  navigateTo(context, LayoutScreen());
                },
                child: Container(
                    // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 37),
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment(-1.064, -2.583),
                        end: Alignment(1, 2.125),
                        colors: <Color>[Color(0xff2755a6), Color(0xffffc700)],
                        stops: <double>[0.592, 1],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'اضف الى السلة',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
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
    );
  }
}

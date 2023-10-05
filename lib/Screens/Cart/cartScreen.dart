import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Layout/layoutCubit/layoutStates.dart';
import '../../Layout/layoutCubit/layoutcubit.dart';
import '../../Shared/components.dart';
import '../../layout/layoutScreen.dart';
import '../../models/CartModel.dart';
import '../../models/coursesModel.dart';
import 'cartDetails.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutCubit.get(context).getcart();
    CartModel cartModel;
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
            title: Center(child: Text("السلة")),
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
                                child: Container(
                                    // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                    width: 140,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff2755a6),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'المرحلة الابتدائية',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1764705882,
                                            letterSpacing: -0.5,
                                            color: Colors.white),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                    // autogrouprb27UbZ (CaiJx2aAA1LjyS8LBErB27)
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                    width: 140,
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
                                    width: 140,
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
                                    width: 140,
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
              if (state is CartLoadingState) LinearProgressIndicator(),
              SizedBox(
                height: 10,
              ),
              if (state is CartSuccessState)
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CartDetail(
                                              cc: LayoutCubit.get(context)
                                                  .cartmodel
                                                  .data![index],
                                            )));
                              },
                              child: buildcartItem(
                                  LayoutCubit.get(context)
                                      .cartmodel
                                      .data![index],
                                  context),
                            ),
                        separatorBuilder: (context, index) => myDivider(),
                        itemCount:
                            LayoutCubit.get(context).cartmodel.data!.length))
            ]),
          )),
        );
      },
    );
  }

  Widget buildcartItem(CartData ttmodel, context) => Padding(
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
                                  ttmodel.product!.name,
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
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                ttmodel.product!.details,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
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
                          onTap: () {},
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
                                  'الدفع',
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

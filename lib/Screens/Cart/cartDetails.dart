import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/CartModel.dart';
import '../../models/coursesModel.dart';

class CartDetail extends StatelessWidget {
  late CartData cc;

  CartDetail({
    Key? key,
    required this.cc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var cc = CoursesCubit.get(context).coursesmodel.data;
    // var cc = FineCubit.get(context).finemodel.transactions;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        foregroundColor: Color.fromARGB(255, 7, 7, 7),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              SizedBox(
                height: 30,
              ),
              itemProfile(
                  'Model', cc.product!.name, CupertinoIcons.car_detailed),
              SizedBox(
                height: 30,
              ),
              itemProfile(
                  'Color', cc.price.toString(), CupertinoIcons.car_detailed),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              color: Colors.blue.withOpacity(.2),
              spreadRadius: 3,
              blurRadius: 10,
            ),
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}

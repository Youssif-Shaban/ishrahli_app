import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/notebookModel.dart';

class bookDetail extends StatelessWidget {
  late noteData notebook;

  bookDetail({
    Key? key,
    required this.notebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              itemProfile('Model', notebook.name, CupertinoIcons.car_detailed),
              SizedBox(
                height: 30,
              ),
              itemProfile(
                  'Color', notebook.description, CupertinoIcons.car_detailed),
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

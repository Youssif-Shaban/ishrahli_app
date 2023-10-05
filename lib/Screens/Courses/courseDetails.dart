import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../Login/loginScreen.dart';
import '../../Shared/components.dart';
import '../../models/coursesModel.dart';
import '../Cart/cartScreen.dart';

class CDetail extends StatelessWidget {
  late CourseData cc;

  CDetail({
    Key? key,
    required this.cc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var cc = CoursesCubit.get(context).coursesmodel.data;
    // var cc = FineCubit.get(context).finemodel.transactions;

    Future<void> store(
      String id,
      String product_type,
      String price,
      String subscription,
    ) async {
      var headers = {
        'Accept': 'application/json',
        'ISHRAHLI-API-KEY': 'ishrahli_key_MVQOBEPdWDjRVCdo',
        'Authorization': 'Bearer $token'
      };
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://trustproducts.store/api/cart/store'));
      request.fields.addAll({
        'id': id,
        'product_type': product_type,
        'price': price,
        'subscription': subscription
      });

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    }

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
              itemProfile('Name', cc.name, CupertinoIcons.car_detailed),
              SizedBox(
                height: 30,
              ),
              itemProfile(
                  'description', cc.description, CupertinoIcons.car_detailed),
              SizedBox(
                height: 30,
              ),
              ConditionalBuilder(
                condition: true,
                //state is! CartaLoginLoadingState,
                builder: (context) => ElevatedButton(
                    onPressed: () {
                      store(cc.courseId.toString(), cc.courseType.toString(),
                          cc.price.toString(), cc.description);
                      navigateTo(context, CartScreen());
                    },
                    child: const Text(
                      "تسجيل",
                    )),

                fallback: (context) =>
                    Center(child: CircularProgressIndicator()),
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

import 'package:flutter/material.dart';
import '../Layout/layoutScreen.dart';
import '../Login/loginScreen.dart';
import '../Shared/components.dart';

class BoardingModel {
  final String image;

  BoardingModel({
    required this.image,
  });
}

class OnboardingScrean extends StatefulWidget {
  @override
  State<OnboardingScrean> createState() => _OnboardingScreanState();
}

class _OnboardingScreanState extends State<OnboardingScrean> {
  var boardControler = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(image: 'assets/logo.png'),
    BoardingModel(image: 'assets/open2.png'),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                navigateTo(context, LayoutScreen());
              },
              child: Text("Skip"))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: PageView.builder(
                controller: boardControler,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                    print("last page");
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            Row(
              children: [
                Text(
                  " ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    if (isLast) {
                      navigateTo(context, LayoutScreen());
                    }
                    boardControler.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn);
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        children: [
          Image(image: AssetImage('${model.image}'))
          // PageView.builder(itemBuilder: )
        ],
      );
}

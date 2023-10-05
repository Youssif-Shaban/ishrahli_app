import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Shared/components.dart';
import '../network/local/cache_helper.dart';
import 'layoutCubit/layoutStates.dart';
import 'layoutCubit/layoutcubit.dart';

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    token = CacheHelper.getData(key: 'token');

    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var layoutcubit = LayoutCubit.get(context);
        return Scaffold(
          body: layoutcubit.screens[layoutcubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                layoutcubit.changeBottomNavBar(index);
              },
              currentIndex: layoutcubit.currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'الرئيسية',
                  backgroundColor: Color.fromARGB(255, 120, 163, 236),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book_online),
                  label: 'كورساتي',
                  backgroundColor: Color.fromARGB(255, 120, 163, 236),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message_rounded),
                  label: 'السلة',
                  backgroundColor: Color.fromARGB(255, 120, 163, 236),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'الملف الشخصي',
                  backgroundColor: Color.fromARGB(255, 120, 163, 236),
                ),
              ]),
        );
      },
    );
  }
}

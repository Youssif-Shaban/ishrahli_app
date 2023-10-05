import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Login/loginScreen.dart';
import '../../Screens/Cart/cartScreen.dart';
import '../../Screens/Courses/courseScreen.dart';
import '../../Screens/Home/homeScreen.dart';
import '../../Screens/Profile/profileScreen.dart';
import '../../Shared/components.dart';
import '../../models/CartModel.dart';
import '../../models/coursesModel.dart';
import '../../models/notebookModel.dart';
import '../../models/profileModel.dart';
import '../../network/local/cache_helper.dart';
import '../../network/remote/dio_Helper.dart';
import 'layoutStates.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  //initial Constructor.
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'الرئيسية',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.book_online),
      label: 'كورساتي',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message_rounded),
      label: 'السلة',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'الملف الشخصي',
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    CourseScreen(),
    CartScreen(),
    LoginScreen()
  ];

  // token = CacheHelper.getData(key: 'token');

  void changeBottomNavBar(index) {
    currentIndex = index;
    // if (index == 1) getTransactions();
    emit(LayoutChangeBottomNavState());
  }

  late CoursesModel coursemodel;
  void getCourses() {
    emit(CourseLoadingState());

    DioHelper.getData(
      url: 'http://trustproducts.store/api/courses',
    ).then((value) {
      coursemodel = CoursesModel.fromJson(value.data);
      print(coursemodel.data?[0].name);
      print(coursemodel.data?[0].slug);
      print(coursemodel.data?[0].courseId);
      emit(CourseSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CourseErrorState());
    });
  }

  late NotebookModel bookmodel;
  void getbooks() {
    emit(BookLoadingState());

    DioHelper.getData(
      url: 'https://trustproducts.store/api/notebooks/specials/all',
    ).then((value) {
      bookmodel = NotebookModel.fromJson(value.data);
      print(bookmodel.data?[0].name);
      emit(BookSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(BookErrorState());
    });
  }

  late ProfileModel profilemodel;
  void getProfile() {
    emit(ProfileLoadingState());

    DioHelper.getData(
            url: 'http://trustproducts.store/api/users/profile', token: token)
        .then((value) {
      profilemodel = ProfileModel.fromJson(value.data);
      print(profilemodel.data?.firstName);
      print(profilemodel.data?.phone);
      emit(ProfileSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(ProfileErrorState());
    });
  }

  late CartModel cartmodel;
  void getcart() {
    emit(CartLoadingState());

    DioHelper.getData(
            url: 'https://trustproducts.store/api/cart/all', token: token)
        .then((value) {
      cartmodel = CartModel.fromJson(value.data);
      print(cartmodel.data![0].product?.name);
      print(cartmodel.data![0].product?.details);
      emit(CartSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CartErrorState());
    });
  }
}

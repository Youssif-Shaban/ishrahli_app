import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Layout/layoutCubit/layoutStates.dart';
import 'Layout/layoutCubit/layoutcubit.dart';
import 'Shared/components.dart';
import 'network/local/cache_helper.dart';
import 'network/remote/dio_Helper.dart';
import 'onBoarding/onboarding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  Widget widget;
  token = CacheHelper.getData(key: 'token');

  print('your token is $token');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          //BlocProvider(create: (context) => ProfileCubit()..getProfile()),
          //BlocProvider(create: (context) => CoursesCubit()..getCourses()),
          //BlocProvider(create: (context) => BookCubit()..getbooks()),
          //BlocProvider(create: (context) => CartCubit()..getCart()),
          //BlocProvider(create: (context) => ishrahliLoginCubit()),
          BlocProvider(
              create: (context) => LayoutCubit()
                ..getCourses()
                ..getProfile()
                ..getcart()),
        ],
        child: BlocConsumer<LayoutCubit, LayoutStates>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Ishrahli',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: OnboardingScrean(),
              );
            },
            listener: (context, state) {}));
  }
}

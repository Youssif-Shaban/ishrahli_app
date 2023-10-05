import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Layout/layoutCubit/layoutStates.dart';
import '../../Layout/layoutCubit/layoutcubit.dart';
import '../../Shared/components.dart';
import '../../layout/layoutScreen.dart';
import '../../models/profileModel.dart';
import '../../network/local/cache_helper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    token = CacheHelper.getData(key: 'token');

    ProfileModel profileModel;
    LayoutCubit.get(context).getProfile();
    LayoutCubit profile = LayoutCubit.get(context);
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        return ConditionalBuilder(
            condition: LayoutCubit.get(context).profilemodel != null,
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    backgroundColor: const Color(0x7f2755a6),
                    actions: [
                      Image.asset(
                        "assets/logo.png",
                        width: 100,
                      )
                    ],
                    elevation: 0,
                    title: Center(child: Text("الطالب")),
                  ),
                  body: SingleChildScrollView(
                    child: SafeArea(
                        child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(children: [
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              // autogroupzkuk14T (CaiPFeuDdH9dAk8dvwzKUK)
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                              padding:
                                  const EdgeInsets.fromLTRB(5, 5.09, 5, 5.09),
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
                                      "assets/student.png",
                                      width: 100,
                                      height: 100,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          if (state is ProfileLoadingState)
                            LinearProgressIndicator(),
                          SizedBox(
                            height: 10,
                          ),
                          if (state is ProfileSuccessState)
                            SizedBox(
                              height: 30,
                            ),
                          itemProfile(
                              'الاسم الاول',
                              profile.profilemodel.data!.firstName,
                              Icons.person),
                          SizedBox(
                            height: 30,
                          ),
                          itemProfile(
                              'الاسم الاخير',
                              profile.profilemodel.data!.lastName,
                              CupertinoIcons.person),
                          SizedBox(
                            height: 30,
                          ),
                          itemProfile(
                              'رقم الهاتف',
                              profile.profilemodel.data!.phone,
                              CupertinoIcons.phone),
                          SizedBox(
                            height: 30,
                          ),
                          itemProfile(
                              'كود المدينة',
                              profile.profilemodel.data!.countryCode.toString(),
                              CupertinoIcons.home),
                          SizedBox(
                            height: 30,
                          ),
                          itemProfile(
                              'المدينة',
                              profile.profilemodel.data!.info!.city,
                              CupertinoIcons.home),
                          SizedBox(
                            height: 30,
                          ),
                          itemProfile(
                              'النوع',
                              profile.profilemodel.data!.info!.gender,
                              CupertinoIcons.person),
                          SizedBox(
                            height: 30,
                          ),
                          itemProfile(
                              'عنوان المنزل',
                              profile.profilemodel.data!.info!.home,
                              CupertinoIcons.home),
                          SizedBox(
                            height: 30,
                          ),
                        ]),
                      ),
                    )),
                  ),
                ),
            fallback: (context) => Center(
                  child: CircularProgressIndicator(),
                ));
      },
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

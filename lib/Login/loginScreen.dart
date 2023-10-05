import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../Layout/layoutScreen.dart';
import '../Shared/components.dart';
import '../network/local/cache_helper.dart';
import 'loginCubit/loginCubit.dart';
import 'loginCubit/loginStates.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formfield = GlobalKey<FormState>();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            if (state.loginmodel.status!) {
              print(state.loginmodel.status);
              print(state.loginmodel.token);
              CacheHelper.saveData(key: 'token', value: state.loginmodel.token)
                  .then((value) {
                navigateTo(context, LayoutScreen());
              });
            } else {
              print("login failed");
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formfield,
                    child: Column(children: [
                      // Text(token.toString()),
                      Image.asset(
                        'assets/logo.png',
                        width: 200,
                        height: 200,
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "رقم الهاتف ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        onFieldSubmitted: (String value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your phone number";
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "كلمة المرور ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,

                        keyboardType: TextInputType
                            .visiblePassword, //make the @ sign visible in the keyboard during writing the email
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your password";
                          }
                          //return null;
                        },
                        onFieldSubmitted: (value) {
                          if (_formfield.currentState!.validate()) {
                            LoginCubit.get(context).userLogin(
                                user_phone: phoneController.text,
                                user_password: passwordController.text);
                          }
                        },
                        decoration: InputDecoration(
                          labelText: '  ',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              // CartaLoginCubit.get(context)
                              //     .changePasswordVisiibility();
                            },
                            icon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          //navigateTo(context, forgetPasswordScreen());
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "هل نسيت كلمة السر؟",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              color: Color(0xff2755a6),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context) => GestureDetector(
                                onTap: () {
                                  if (_formfield.currentState!.validate()) {
                                    LoginCubit.get(context).userLogin(
                                        user_phone: phoneController.text,
                                        user_password: passwordController.text);
                                  }
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
                                        colors: <Color>[
                                          Color(0xff2755a6),
                                          Color(0xffffc700)
                                        ],
                                        stops: <double>[0.592, 1],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'دخول',
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
                          fallback: (context) => Center(
                                child: CircularProgressIndicator(),
                              )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ' هل لديك حساب؟',
                          ),
                          GestureDetector(
                            onTap: () {
                              //                   navigateTo(context, RegisterScreen());
                            },
                            child: Text(
                              ' انشاء حساب',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xff2755a6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

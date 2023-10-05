import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/loginModel.dart';
import '../../network/remote/dio_Helper.dart';
import 'loginStates.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  late LoginModel loginmodel;
  void userLogin({
    required String user_phone,
    required String user_password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: 'http://trustproducts.store/api/login',
      data: {
        'phone': user_phone,
        'password': user_password,
      },
    ).then((value) {
      print(value.data);
      loginmodel = LoginModel.fromJson(value.data);
      print(loginmodel.token);
      emit(LoginSuccessState(loginmodel));
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState(error.toString()));
      print(error.toString());
    });
  }
}

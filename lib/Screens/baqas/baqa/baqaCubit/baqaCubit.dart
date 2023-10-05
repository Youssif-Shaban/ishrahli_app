import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/packageModel.dart';
import '../../../../network/remote/dio_Helper.dart';
import 'baqaStates.dart';

class BaqaCubit extends Cubit<BaqaStates> {
  BaqaCubit() : super(BaqaInitialState());

  static BaqaCubit get(context) => BlocProvider.of(context);

  late PackageModel baqamodel;

  void getPackages() {
    DioHelper.getData(
      url: 'https://trustproducts.store/api/notebooks/specials/all',
      // token: token,
    ).then((value) {
      baqamodel = PackageModel.fromJson(value.data);
      print(baqamodel.data?[0].classroom);
      print(baqamodel.data?[0].description);
      emit(BaqaSucccessState());
    }).catchError((error) {
      print(error.toString());
      emit(BaqaErrorState(error));
    });
  }
}

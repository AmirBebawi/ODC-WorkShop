import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcapp/cubit/loginCubit/states.dart';
import '../../loginNetwork/shared_pref.dart';
import '../../model/component/components.dart';
import '../../model/loginModel.dart';
import '../../network/dio_helper.dart';
import '../../network/end_points.dart';
import '../../view/newsScreen/news_layout.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit():super(LoginInitialState());
  static LoginCubit get(context){
    return BlocProvider.of(context);
  }
  LoginModel? loginModel;

  void userLogin({
    required String email,
    required String password,
    BuildContext? context
  })
  {
    emit(LoginLoadingState());

    DioHelper.postData(
      url: loginEndPoint,
      data:
      {
        'email': email,
        'password': password,
      },
    ).then((value)
    {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      CacheHelper.put(key: 'login', value: true);
      navigateTo(context, NavLayout());
      emit(LoginSuccessState(loginModel!));
    }).catchError((error)
    {
      print(error.toString());
      emit(LoginErrorState(error.toString()));
    });
  }

}

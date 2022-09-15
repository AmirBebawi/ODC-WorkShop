import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcapp/cubit/termsCUbit/states.dart';
import '../../model/termsModel.dart';
import '../../network/dio_helper.dart';
import '../../network/end_points.dart';

class TermsCubit extends Cubit<TermssState> {
  TermsCubit() : super(TermsInitial());

  //single instance
  static TermsCubit get(context) => BlocProvider.of(context);
  bool isLoading = true;
  TermsModel? data = TermsModel();

  Future getTermData() async {
    emit(TermsGetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA2NDA2NywiZXhwIjoxNzQ5NDY0MDY3fQ.bF4NAz87VIOeS7Qfc60QzUhORkNXPT2ssx6W6I0mcSA";
    DioHelper.getData(url: termsEndPoint, token: token).then(
          (value) {
        if (value.statusCode == 200) {
          data = TermsModel.fromJson(value.data);
          print(value.data);
          isLoading = false;
          emit(TermsGetData());

        }
      },
    );
    emit(TermsGetData());
  }
}
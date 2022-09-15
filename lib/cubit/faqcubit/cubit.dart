import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcapp/cubit/faqcubit/states.dart';
import '../../model/faq_model.dart';
import '../../network/dio_helper.dart';
import '../../network/end_points.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());

  //single instance
  static FaqCubit get(context) => BlocProvider.of(context);
  bool isLoading = true;
  FaqModel? data = FaqModel();
  Future getFaqData() async {
    emit(FaqGetData());
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsInJvbGUiOjQsImlhdCI6MTY2MzA2NDA2NywiZXhwIjoxNzQ5NDY0MDY3fQ.bF4NAz87VIOeS7Qfc60QzUhORkNXPT2ssx6W6I0mcSA";
    DioHelper.getData(url: faqEndPoint, token: token).then(
            (value) {
          if (value.statusCode == 200) {
            data = FaqModel.fromJson(value.data);
            print(value.data);
            isLoading = false;
            emit(FaqGetData());

          }
        });
    emit(FaqGetData());
  }
}
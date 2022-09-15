import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcapp/cubit/noteCubit/states.dart';
import '../../database/database.dart';
import '../../view/noteScreen/note_screen.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInitial());

  //single instance
  static NoteCubit get(context) => BlocProvider.of(context);

  bool isLoading = true;
  List<NoteData> model =[];

  getData()  {
    emit(NoteGetData());
    SQLHelper.getNotes().then(
          (value) {
        for(int i = 0 ; i < value.length ; i++){
          model.add(NoteData.fromJson(value[i]));
          print(value);
          isLoading = false;
        }
        emit(NoteGetData());


      },
    );
    emit(NoteGetData());
  }
}

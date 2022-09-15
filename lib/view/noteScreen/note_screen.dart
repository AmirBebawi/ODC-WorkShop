import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/noteCubit/cubit.dart';
import '../../cubit/noteCubit/states.dart';
import '../../model/component/components.dart';
import '../newsScreen/news_layout.dart';
import 'note_details.dart';

class NoteScreen extends StatefulWidget {

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  // List<NoteData> data = [];
  @override
  void initState() {
    // TODO: implement initState
    NoteCubit.get(context).getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    NoteCubit myCubit = NoteCubit.get(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocConsumer<NoteCubit, NoteStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  popTo(context, NavLayout());
                },
              ),
            ),
            body:
            // myCubit.isLoading == true
            //     ? Center(child: Text("Not Yet"))
            //     :
            SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        buildNoteItem(myCubit.model[index]),
                    itemCount: myCubit.model.length,
                  )
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      navigateTo(context, NodeDetails());
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget buildNoteItem(NoteData data) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      padding: EdgeInsetsDirectional.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text("${data.title}"),
        subtitle: Text("${data.description}"),
      ),
    ),
  );
}

class NoteData {
  int? id;
  String? date;
  String? title;
  String? description;

  NoteData({this.id, this.description, this.title});

  NoteData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    description = json['description'];
    title = json['title'];
  }
}

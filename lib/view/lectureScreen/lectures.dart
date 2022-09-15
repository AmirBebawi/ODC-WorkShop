import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/lectureCubit/lectures_cubit.dart';
import '../../cubit/lectureCubit/lectures_state.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LecturesCubit myCubit = LecturesCubit.get(context);
    return  BlocConsumer<LecturesCubit, LecturesState>(
      listener: (context, state) {},
      builder: (context, state) {
        LecturesCubit myCubit = LecturesCubit.get(context);
        return MaterialApp(
          home: Scaffold(
            body: myCubit.isLoading == true
                ? Center(child: Text("Loading .. "))
                : Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView.builder(
                itemCount: myCubit.data!.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(myCubit
                                .data!.data![index].lectureSubject
                                .toString()),
                            Row(
                              children: [
                                Icon(Icons.access_time),
                                Text("20")
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text("Lecture Day"),
                                Row(
                                  children: [
                                    Icon(Icons.call),
                                    Text("Day")
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("Lecture Day"),
                                Row(
                                  children: [
                                    Icon(Icons.call),
                                    Text("Day")
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("Lecture Day"),
                                Row(
                                  children: [
                                    Icon(Icons.call),
                                    Text("Day")
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../model/component/components.dart';
import '../eventScreen/events_screen.dart';
import '../finalScreen/final_screen.dart';
import '../lectureScreen/lecture_screen.dart';
import '../midtermScreen/midterm.dart';
import '../noteScreen/note_screen.dart';
import '../sectionScreen/section_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Orange",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      " Digital ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      " Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, LectureScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child: SvgPicture.asset(
                                          "iconshome/lecture.svg",
                                        ),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Lectures",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, SectionScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child:  SvgPicture.asset(
                                          "iconshome/sections.svg",
                                        ),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Sections",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, ExamsScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child:  SvgPicture.asset(
                                          "iconshome/midterm.svg",
                                        ),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Midterms",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, FinalScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child:  SvgPicture.asset(
                                          "iconshome/final.svg",
                                        ),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Finals",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, EventsScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child:  SvgPicture.asset(
                                          "iconshome/event.svg",
                                        ),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Events",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.only(start: 15, end: 15),
                              child: InkWell(
                                onTap: () {
                                  navigateTo(context, NoteScreen());
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsetsDirectional.all(10),
                                  width: width / 2,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child:  SvgPicture.asset(
                                          "iconshome/notes.svg",
                                        ),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Notes",
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

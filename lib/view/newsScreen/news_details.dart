import 'package:flutter/material.dart';
import '../../cubit/pubCubit/cubit.dart';
import '../../model/component/components.dart';
import '../../model/news_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'news_layout.dart';
class NewsDeatils extends StatelessWidget {
  String? text1;

  String? text2;

  var date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PubCubit myCubit = PubCubit.get(context);
    List<Data>? newsData=myCubit.model!.data;
    date.text = DateTime.now().toString();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration:
            BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.deepOrange,
                size: 30,
              ),
              onPressed: () {
                navigateTo(context, NavLayout());
              },
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: [
              Container(
                child: Image(
                  image: NetworkImage(
                    "${newsData![0].imageUrl}",
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              autoPlayAnimationDuration: Duration(seconds: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${newsData![0].title}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${date.text}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "${newsData![0].body}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

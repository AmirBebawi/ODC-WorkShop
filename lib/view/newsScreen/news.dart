import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/pubCubit/cubit.dart';
import '../../cubit/pubCubit/states.dart';
import '../../model/news_model.dart';
import '../../model/component/components.dart';
import 'news_details.dart';
class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PubCubit myCubit = PubCubit.get(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<PubCubit, PubStates>(
      listener: (context, state) {},
      builder: (BuildContext context, state) => Scaffold(
        body: myCubit.isLoading == true
            ? Center(child: Text("Loading .. "))
            : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Center(
                  child: Text(
                    'News',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 37),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: myCubit.model!.data!.length,
                  itemBuilder: (context, index) {
                    return newsItem(width, height, index,
                        PubCubit.get(context).model!.data![index],context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget newsItem(double width, double height, int index, Data datum,BuildContext context) => InkWell(
    onTap: (){
      navigateTo(context, NewsDeatils());
    },
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
          ),
          width: double.infinity,
          height: height / 2.5,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            elevation: 10,
            color: Colors.grey[350],
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage('${datum.imageUrl}'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    '${datum.title}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: width / 3,
                    height: height / 16,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(13)),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Icon(
                            Icons.share_outlined,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width / 26,
                        ),
                        Container(
                          color: Colors.white,
                          height: height / 30,
                          width: 1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.copy,
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 165),
                  child: Text(
                    '${datum.body}',
                    style: TextStyle(color: Colors.black, fontSize: 23),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );

}

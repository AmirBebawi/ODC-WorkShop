import 'package:flutter/material.dart';
import '../../model/component/components.dart';
import '../newsScreen/news_layout.dart';
class SupportScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var problemController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.deepOrange,
            size: 30,
          ),
          onPressed: () {
            navigateTo(context, NavLayout());
          },
        ),
        title: Text(
          "Support",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: TextFormField(
                controller: nameController,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.deepOrange,
                  labelText: ' Name ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: TextFormField(
                controller: emailController,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  fillColor: Colors.deepOrange,
                  labelText: ' E-mail ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: TextFormField(
                maxLines: 5,
                controller: problemController,
                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  fillColor: Colors.deepOrange,
                  labelText: ' What is your problem ? ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15)),
                width: double.infinity ,
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: Colors.deepOrange,
                  onPressed: (){
                  },
                  child: Text(
                    " Submit ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

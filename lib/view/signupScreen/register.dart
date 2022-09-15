import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/registerCubit/cubit.dart';
import '../../cubit/registerCubit/states.dart';
import '../../model/component/components.dart';
import '../loginScreen/login_screen.dart';

class RegisterScreen extends StatelessWidget {

  RegisterScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var nameController = TextEditingController();

  var phoneController = TextEditingController();

  final items = ['Male', 'Female', 'Other'];


  @override
  Widget build(BuildContext context) {
    RegisterCubit myCubit = RegisterCubit.get(context);
    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: (context,state){
      },
      builder: (context,state){
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          body: myCubit.isLoading == true
              ? Center(child: Text("Loading .. "))
              :Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: nameController,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.deepOrange,
                      labelText: ' Name ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: emailController,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Colors.deepOrange,
                      labelText: ' E-mail ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.deepOrange,
                      ),
                      fillColor: Colors.deepOrange,
                      labelText: ' Password ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.deepOrange,
                      ),
                      fillColor: Colors.deepOrange,
                      labelText: ' Password ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: phoneController,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      fillColor: Colors.deepOrange,
                      labelText: ' Phone ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(
                                  fontSize: 20 ,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 5,) ,
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              alignment: Alignment.center,
                              width: 100,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.deepOrange,
                                  width: 2,
                                ),
                              ),
                              child: DropdownButton<String>(
                                  value: RegisterCubit.get(context).value1,
                                  items: items.map(buildMenuItem).toList(),
                                  onChanged:(value){RegisterCubit.get(context).changeGender(value!);}
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50,) ,
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "University",
                                style: TextStyle(
                                    fontSize: 20 ,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,) ,
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.deepOrange,
                                    width: 2,
                                  ),
                                ),
                                child: DropdownButton<String>(
                                    value: RegisterCubit.get(context).value2,
                                    items:  myCubit.data2?.data?.map((value) {
                                      return DropdownMenuItem<String>(
                                        value:value.name,
                                        child: Text('${value.name}'),
                                      );
                                    }).toList(),
                                    onChanged: (value) { }
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "Grade",
                        style: TextStyle(
                            fontSize: 20 ,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,) ,
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.center,
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                          ),
                          child: DropdownButton<String>(
                              value: RegisterCubit.get(context).value3,
                              items:  myCubit.data?.data?.map((value) {
                                return DropdownMenuItem<String>(
                                  value: value.grade,
                                  child: Text(value.grade!),
                                );
                              }).toList(),
                              onChanged:(value)=>RegisterCubit.get(context).changeGrade(value!) ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child:Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                      width: 350,
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        color: Colors.deepOrange,
                        onPressed: () {

                        },
                        child: TextButton(
                          onPressed: (){
                            RegisterCubit.get(context).userRegister(
                              email: emailController.text,
                              password: passwordController.text,
                              name: nameController.text,
                              gender: RegisterCubit.get(context).value1,
                              phoneNumber: phoneController.text,
                              universityId:RegisterCubit.get(context).value2,
                              gradeId:RegisterCubit.get(context).value3 ,
                            );
                          },
                          child: Text(" Sign Up ",
                              style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.deepOrange,
                            width: 2,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            navigateTo(context, LoginScreen());
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  );
}

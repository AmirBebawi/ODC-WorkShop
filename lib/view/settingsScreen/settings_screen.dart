import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcapp/view/settingsScreen/support_screen.dart';
import 'package:odcapp/view/settingsScreen/terms_screen%5B1%5D.dart';
import '../../cubit/registerCubit/cubit.dart';
import '../../cubit/registerCubit/states.dart';
import '../../model/component/components.dart';
import 'faqs_screen[1].dart';
import 'our_partener.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SafeArea(
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: ListTile(
                          title: Text(
                            ('FaQ'),
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: (){
                            navigateTo(context, FaqScreen());
                          },
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: ListTile(
                          title: Text(
                            ('Terms& Condations'),
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: (){
                            navigateTo(context, TermsScreen());
                          },
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: ListTile(
                          title: Text(
                            ('Our Partenrs'),
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: (){
                            navigateTo(context, OurPartenerScreen());
                          },
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: ListTile(
                          title: Text(
                            ('Support'),
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: (){
                            navigateTo(context, SupportScreen());
                          },
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          RegisterCubit.get(context).exitDialog(context);
                        },
                        child: ListTile(
                          title: Text(
                            ('Log out'),
                            style: TextStyle(fontSize: 23),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

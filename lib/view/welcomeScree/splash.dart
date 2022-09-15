import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../loginNetwork/shared_pref.dart';
import '../../model/component/components.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? token = CacheHelper.getvalToken(key: "token");
    return Scaffold(
        body: Center(
          child: AnimatedSplashScreen(
            nextScreen: home!,
            //(token == null) ? LoginScreen() : NavLayout(),
            duration: 2200,

            splash: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Orange", style: GoogleFonts.poppins(
                        color: Color(0xFFFF6600),
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                    )),
                    SizedBox(width: 7),

                    Text("Digital Center", style: GoogleFonts.poppins(
                        wordSpacing: 3,
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                    ))
                  ],
                ),
                SizedBox(height: 11),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: LinearPercentIndicator(
                    barRadius: Radius.circular(10),
                    alignment: MainAxisAlignment.center,
                    width: 350,
                    percent: 1,
                    animation: true,
                    animationDuration: 3000,
                    progressColor: Color(0xFFFF6600),


                  ),
                ),
              ],


            ),
          ),
        ));
  }
}
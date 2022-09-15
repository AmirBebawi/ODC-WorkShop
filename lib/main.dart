import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcapp/view/loginScreen/login_screen.dart';
import 'package:odcapp/view/newsScreen/news_layout.dart';
import 'package:odcapp/view/welcomeScree/splash.dart';
import 'cubit/examCubit/cubit.dart';
import 'cubit/faqcubit/cubit.dart';
import 'cubit/lectureCubit/lectures_cubit.dart';
import 'cubit/loginCubit/cubit.dart';
import 'cubit/noteCubit/cubit.dart';
import 'cubit/pubCubit/cubit.dart';
import 'cubit/registerCubit/cubit.dart';
import 'cubit/termsCUbit/cubit.dart';
import 'loginNetwork/shared_pref.dart';
import 'model/component/components.dart';
import 'network/dio_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  // late Widget home;
  login = CacheHelper.getval(key: 'login') ?? false;
  if (login == true) {
    home = NavLayout();
  } else {
    home = LoginScreen();
  }
  runApp(MyApp(home: home!, login: login!));
}

class MyApp extends StatelessWidget {
  final bool login; //???
  final Widget home;

  MyApp({required this.login, required this.home});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => PubCubit()..getData(),
        ),
        BlocProvider(
          create: (context) => LecturesCubit()..getLecData(),
        ),
        BlocProvider(
          create: (context) => ExamsCubit()..getExamData(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit()
            ..getGradeData()
            ..getUniversityData(),
        ),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => NoteCubit()),
        BlocProvider(create: (context) => FaqCubit()..getFaqData()),
        BlocProvider(create: (context) => TermsCubit()..getTermData())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              elevation: 30.0,
              selectedIconTheme: const IconThemeData(color: Colors.deepOrange),
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              selectedItemColor: Colors.deepOrange,
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              showUnselectedLabels: true),
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:chatbot/home_page.dart';

import 'constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'SakhaBot',
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: appBarThemeColor),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: scaffoldBgColor

      ),
      initialRoute: HomePage.id,
      routes:{
        HomePage.id: (context)=>const HomePage(),
      },
    );
  }
}


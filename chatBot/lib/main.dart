import 'package:flutter/material.dart';
import 'package:chatbot/home_page.dart';
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
          appBarTheme: AppBarTheme(backgroundColor: Color(0xff262933)),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color(0xff191e2e)

      ),
      initialRoute: HomePage.id,
      routes:{
        HomePage.id: (context)=>const HomePage(),
      },
    );
  }
}


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
        brightness: Brightness.dark,
      ),
      initialRoute: HomePage.id,
      routes:{
        HomePage.id: (context)=>const HomePage(),
      },
    );
  }
}



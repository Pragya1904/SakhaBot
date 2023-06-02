import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id="home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller=TextEditingController();

  List<Map<String,dynamic>> messages=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';

import 'messages_page.dart';
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
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter=instance);
  }
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sakha - Ur true Buddy"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Messages(messages:messages)),
            Container(
              color:Color(0xff1f2432) ,
              padding: EdgeInsets.symmetric(horizontal:width*0.005,vertical: height*0.02),
              child: Row(
                children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.002),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color:  Color(0xff0f141e),),
                    //Color(0xff2877ef),
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: "Enter your message",border: InputBorder.none),
                      style: TextStyle(color: Colors.white,),
                    ),
                  )),
                  IconButton(onPressed: (){
                    sendMessage(_controller.text);
                    _controller.clear();
                  }, icon: const Icon(Icons.send,color: Color(0xff90948d),),)
                ],
              ),

            )
          ],
        ),
      ),
    );
  }

  sendMessage(String text)async{
    if(text.isEmpty){
      print("empty message");  //add toast or snackbar
    }
    else
    {
      setState(() {
        addMessage(Message(
            text: DialogText(text:[text])),true);
      });

      DetectIntentResponse response=await dialogFlowtter.detectIntent(queryInput: QueryInput(text: TextInput(text: text)));

      if(response.message==null)return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message,[bool isUserMessage=false])
  {
    messages.add({
      'message':message,
      'isUserMessage':isUserMessage});
  }
}
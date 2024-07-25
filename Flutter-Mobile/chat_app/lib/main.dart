import 'package:chat_app/chart_page.dart';
import 'package:chat_app/counter_stateful_demo.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color buttonColors = Colors.blue;
    return  MaterialApp(
      title: "Chat App",
      theme: ThemeData(primarySwatch: Colors.deepPurple,
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.deepPurple,
        // ),
      ),
      // home: CounterStateful(buttonColor: Colors.blue)
      home: const LoginPage(),
    );
  }

}



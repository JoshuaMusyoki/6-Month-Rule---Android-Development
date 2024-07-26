import 'package:chat_app/chart_page.dart';
import 'package:chat_app/counter_stateful_demo.dart';
import 'package:chat_app/login_page.dart';
import 'package:chat_app/utils/brandColors.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black
        ),
      ),
      // home: CounterStateful(buttonColor: Colors.blue)
      home:  LoginPage(),
      routes: {
        "/chat": (context) => ChatPage()
      },
    );
  }

}



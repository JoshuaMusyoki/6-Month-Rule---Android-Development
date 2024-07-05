import 'package:chat_app/widgets/chat_buble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Hi Poojg"),
        actions: [
          IconButton(
              onPressed: (){
                print("ICon Pressed");
              }, 
              icon: Icon(Icons.logout
              )
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatBubble(alignment: Alignment.centerLeft, message: "Hello! This is Joshua"),
                ChatBubble(alignment: Alignment.centerRight, message: "Good Evening!!")
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );

  }
}

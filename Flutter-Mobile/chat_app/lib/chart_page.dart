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
        title: const Text("Hi Poojg"),
        actions: [
          IconButton(
              onPressed: (){
                print("ICon Pressed");
              }, 
              icon: const Icon(Icons.logout
              )
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index){
                return  ChatBubble(
                      alignment: index % 2 == 0
                          ?Alignment.centerLeft
                          :Alignment.centerRight,
                      message: "Hello! This is Joshua");
            }),
          ),
          const ChatInput(),
        ],
      ),
    );

  }
}

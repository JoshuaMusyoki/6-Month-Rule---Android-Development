import 'package:chat_app/widgets/chat_buble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  // final String username;
  const ChatPage({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text("Hi $username"),
        actions: [
          IconButton(
              onPressed: (){
                // Navigator.pushNamed(context, '/');
                Navigator.popAndPushNamed(context, '/');
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
          ChatInput(),
        ],
      ),
    );

  }
}

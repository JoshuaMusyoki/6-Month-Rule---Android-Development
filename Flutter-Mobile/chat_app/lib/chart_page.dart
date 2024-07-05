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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child:
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Hi. This is your Message.",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Image.network("https://picsum.photos/250?image=9", height: 200)
                      ],
                    ),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)
                      ),
                    ),
            
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child:
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Hi. This is your Message.",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Image.network("https://picsum.photos/250?image=9", height: 200)
                      ],
                    ),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)
                      ),
                    ),
            
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child:
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Hi. This is your Message.",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Image.network("https://picsum.photos/250?image=9", height: 200)
                      ],
                    ),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)
                      ),
                    ),
            
                  ),
                ),
              ],
            ),
          ),

        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.send))
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
          ),
        )
        ],
      ),
    );

  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ChatHomePage(title: 'Chat With Us!!'),
    );
  }
}

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key, required this.title});


  final String title;

  @override
  State<ChatHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChatHomePage> {
  final int _count = 10;
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.home),
            const Text(
              'Initial Counter Stands at:',
            ),

            Text(
              '$_count'
            ),

            const Text(
              "You have pushed the counter:"
            ),
            Text(
              '${_counter -10} Times',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

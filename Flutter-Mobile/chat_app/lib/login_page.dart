import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  // Color buttonColor;
  const LoginPage({super.key});

  void loginUser(){
    print("Login Successful!!");
  }

  @override
  Widget build(BuildContext context) {
    // return const Placeholder(
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text("Let's Sign You in.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5
                    )),
              ),
              const Text(
                "You've been Missed. \n Welcome Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                ),
              ),
              Image.network("https://3009709.youcanlearnit.net/Alien_LIL_131338.png",
                height: 200,
              ),
              ElevatedButton(onPressed: loginUser,
              //     (){
              //   print("Clicked!!");
              //   loginUser();
              // },

                  child: const Text(
                  'Click Me!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              )),
              // OutlinedButton(onPressed: (){
              //   print("You Clicked Me!!");
              // }, child: const FlutterLogo()),
              TextButton(onPressed: (){
                print("Pressed on the URL");
              }, child: const Text('https://www.chuka.ac.ke'))

            ],
          ),
        ),
      )
    );
  }
}
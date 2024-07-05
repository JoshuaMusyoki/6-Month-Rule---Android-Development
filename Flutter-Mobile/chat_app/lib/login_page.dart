import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder(
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("Let's Sign You in.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5
                  )),
            ),
            Text(
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

          ],
        ),
      )
    );
  }
}
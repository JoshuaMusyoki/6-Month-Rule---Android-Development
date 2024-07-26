import 'package:chat_app/chart_page.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {

  // Color buttonColor;
   LoginPage({super.key});
   final _formKey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      // if (usernameController.text.length < 5) {
      //   //   throw error
      // }
      // if (passwordController.text.length < 5) {
      //   //   throw error
      // }
      print(usernameController.text);
      print(passwordController.text);
      // Navigate to Chat Page on Sucessful login
      Navigator.pushReplacementNamed(context, "/chat",
        arguments: '${usernameController.text}');
          // MaterialPageRoute(builder: (context)=>
          // ChatPage(username: usernameController.text,)
          // Container(child: Text('Hello'),)
      // ));
      print("Login Successful!!");
    } else {
      print("not successful");
    }
  }


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      // onChanged: (value){
                      //   print("value $value");
                      // },
                      validator: (value) {
                        if (value!=null && value.isNotEmpty && value.length < 5) {
                          return "Your username should be more than 5";
                        } else if (value!=null && value.isEmpty) {
                          return "Please Enter your Username";
                        }
                        return null;
                      },
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Username',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          border: OutlineInputBorder()
                      ),

                    ),
                    SizedBox(height: 24,),
                    TextFormField(
                      validator: (value){
                        if(value !=null && value.isNotEmpty && value.length < 7){
                          return "Password should contain atleast 7 characters";
                        } else if(value !=null && value.isEmpty){
                          return "Please Enter Password";
                        }
                      },
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          border: OutlineInputBorder()
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              ElevatedButton(onPressed: (){
                loginUser(context);
              },
              //     (){
              //   print("Clicked!!");
              //   loginUser();
              // },

                  child: const Text(
                  'Login!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              )),
              // OutlinedButton(onPressed: (){
              //   print("You Clicked Me!!");
              // }, child: const FlutterLogo()),

              // InkWell(
              //   splashColor: Colors.red,
                GestureDetector(
                onTap: (){
                //   todo: Navigate user to the browser
                  print("Link Clicked!");
                },
                onDoubleTap: (){
                  print("double tapped");
                },
                onLongPress: (){
                  print("onLongPress");
                },
                child: const Column(
                  children: [
                    Text("Find us on this URL"),
                    // TextButton(onPressed: (){
                    //   print("Pressed on the URL");
                    // }, child:

                    Text('https://www.chuka.ac.ke'),
                  ],
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
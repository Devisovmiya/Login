import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.transparent,        //to display the contnt in in the screen with bg
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        //children widgets
        children: [
          //child 1
          Icon(                                               
            Icons.person_2_rounded,
            size: 200,
            color: const Color.fromARGB(255, 95, 146, 125),
          ),
          //child 2
          Text(
            ' LOGIN',
            style: GoogleFonts.robotoCondensed(
              color: const Color.fromARGB(255, 30, 10, 204),
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            //login
            child: Column(
              children: [
                //column child 1
                Padding(
                  padding: const EdgeInsets.symmetric(            //to provide space around the textfield
                    vertical: 10,
                    horizontal: 500,
                  ),
                    //padding child
                  child: TextField(
                    controller: emailCtrl,              //controller for email textfield
                    decoration: InputDecoration(
                      //hintText: 'Enter your email',
                     labelText: 'Email',

                      //style of label
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 98, 206),
                        fontWeight: FontWeight.bold,
                      ),
                      //setting border of textfield
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),


                //column child 2
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 500,
                  ),
                  //padding child
                  child: TextField(
                    controller: passCtrl,
                    obscureText: true,      //to hide the password
                    decoration: InputDecoration(
                      labelText: 'Password',

                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 98, 206),
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //column child 3
                //login button

                ElevatedButton(
                  onPressed: () async {               //async function for storing data in sharedpreferences

                   
                    final prefers = await SharedPreferences.getInstance();      //to access the saved data
                    final savedEmail = prefers.getString('email');          //to get the saved email and password
                    final savedpass = prefers.getString('password');

                     // validating with a saved one in sharedpreferences
                  
                    if (emailCtrl.text == savedEmail &&
                        passCtrl.text == savedpass) {
                      Navigator.pushReplacement(                      //to navigate to home page after login
                        context,                  
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                    //
                     else {
                      ScaffoldMessenger.of(context).showSnackBar(         //to show the error message
                        SnackBar(content: Text('Invalid credentials')),
                      );
                    }

                    /* if (emailCtrl.text == 'user@gmail.com' &&
                      passCtrl.text == 'password123') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Invalid credentials')),
                    );
                  }*/
                  },
                  child: Text('Login'),
                ),

                SizedBox(height: 15),//space between button and text
                //column child 4
                //signup button
                //below row is used to align the text and button in a single line
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    //row child 1
                    Text(
                      'New User?',
                      style: TextStyle(
                        color: const Color.fromARGB(178, 4, 196, 202),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),

                    //row child 2
                    
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 12, 56, 82),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

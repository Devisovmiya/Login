import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final emailctrl = TextEditingController();
  final passwordctrl = TextEditingController();
  final confrimPassword = TextEditingController();
  final userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 79, 243, 175),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,

        children: [
          Icon(Icons.person_2_outlined, size: 80, color: Colors.blueGrey),
          Text(
            'SIGN UP',
            //  textAlign:TextAlign.center,
            style: GoogleFonts.adventPro(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          SizedBox(height: 10),

          Column(
            children: [
              //Name
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 250,
                ),
                child: TextField(
                  controller: userName,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 59, 95, 112),
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(500, 500),
                      ),
                    ),
                  ),
                ),
              ),
              //Email
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 250,
                ),
                child: TextField(
                  controller: emailctrl,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 59, 95, 112),
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(500, 500),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //Password
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 250,
                ),
                child: TextField(
                  controller: passwordctrl,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 59, 95, 112),
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(500, 500),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              //ConfrimPassword
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 250,
                ),
                child: TextField(
                  controller: confrimPassword,
                  decoration: InputDecoration(
                    labelText: 'Confrim Password',
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 59, 95, 112),
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(500, 500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //button
          ElevatedButton.icon(
            onPressed: () async {
              final email = emailctrl.text;
              final pass = confrimPassword.text;
              final uName = userName.text;

              if (passwordctrl.text == confrimPassword.text &&
                  (emailctrl).toString().contains('@gmail.com')) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Account Created Successfully...!')),
                );
                //saved to shared preferences

                final prefers = await SharedPreferences.getInstance();
                await prefers.setString('email',email); //}these are get by another variable in looginscreen for validation
                await prefers.setString('password', pass);
                await prefers.setString('name', uName); //by their key name

                Navigator.pop(
                  //pop back to the routed screen
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              } else {
                ScaffoldMessenger.of(
                  //message popedup at  bottom
                  context,
                ).showSnackBar(
                  SnackBar(content: Text('Check your Credentials')),
                );
              }

              /* if (passwordctrl.text == confrimPassword.text &&
                  (emailctrl).toString().contains('@gmail.com')) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Account Created Successfully...!')),
                );
                
                Navigator.pop(
                  //pop back to the routed screen
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              } else {
                ScaffoldMessenger.of(
                  //message popedup at  bottom
                  context,
                ).showSnackBar(
                  SnackBar(content: Text('Check your Credentials')),
                );
              }*/
            },
            label: Text(
              'REGISTER',
              style: TextStyle(
                color: const Color.fromARGB(220, 9, 38, 46),
                backgroundColor: const Color.fromARGB(76, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

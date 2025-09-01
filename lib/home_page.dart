import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/settings_page.dart';
import 'package:login/navigation_bar/Bottom_baar.dart';

/* var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight; */

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build( context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(220, 83, 252, 182),
     
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Project App',
          style: GoogleFonts.lato(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
    
      //settingsbutton
       actions: [
          IconButton(
            icon: Icon(Icons.settings_suggest_outlined, size:25),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
          ),
        ], 
      ),
    
     body: BottomBar(),
    );   
  }
}

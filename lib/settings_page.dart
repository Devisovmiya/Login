import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/login_screen.dart';
//import 'package:login_page/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  State<SettingsPage> createState() {
    return _SettingsPageState();
  }
}

class _SettingsPageState extends State<SettingsPage> {
  String? savedName;
  String? savedEmail;
  @override
  void initState() {
    super.initState();
    getValues();
  }

  Future<void> getValues() async {
    final prefers = await SharedPreferences.getInstance();
    setState(() {
      savedName = prefers.getString('name');
      savedEmail = prefers.getString('email');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(195, 79, 243, 175),
        appBar: AppBar(title: Text('Settings')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 80,
                      color: Colors.blueGrey,
                    ),

                    Text(
                      'PROFILE',
                      style: GoogleFonts.adventPro(
                        fontSize: 40,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Name: $savedName",
                      style: GoogleFonts.metamorphous(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "EmailId:$savedEmail ",
                      style: GoogleFonts.metamorphous(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                /* Text(
                      'Date Of Birth: ',
                      style: GoogleFonts.metamorphous(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1/1/2000',
                      style: GoogleFonts.adventPro(fontSize: 20),
                    ),
                  */
                SizedBox(height: 20),

                Center(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.logout),
                    label: Text('Logout'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 235, 240, 163),
                    ),
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                      (r) => false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

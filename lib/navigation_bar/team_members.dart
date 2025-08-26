import 'package:flutter/material.dart';

class TeamMembers extends StatelessWidget {
  const TeamMembers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 79, 243, 175),
    appBar: AppBar(title: Text('TeamMembers_Info')),
    body: 
    Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('Member List'),
        Text('Roles & Responsibilities'),
        Text('Contact Info'),
        Text('Availability'),

      ],
    )
    );
  }
}

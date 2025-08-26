
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 79, 243, 175),
      appBar: AppBar(title: Text('Tasks_Info')),
    body: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('To-do'),
        Text('In Progresss'),
        Text('Completed'),
        Text('Blocked Isuess'),

      ],
    )
    );
  }
}
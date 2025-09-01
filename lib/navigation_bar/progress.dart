import 'package:flutter/material.dart';



class Progress extends StatelessWidget {
  const Progress({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 79, 243, 175),
      appBar: AppBar(title: Text('Progress_Info')),
    body: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        margin: EdgeInsets.all(20),
        child: Column(
            children: [
              Text('Miestones'),
              Text('Deadlines'),
              Text('Status Updates'),
              Text('Roadmap'),
            ]
        ),
      )
      
      ],
    )
    );
  
  }
}
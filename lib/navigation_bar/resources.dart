
import 'package:flutter/material.dart';

class Resources extends StatelessWidget {
  const Resources({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 79, 243, 175),
      appBar: AppBar(title: Text('Resources')),
    body: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('Documents'),
        Text('Tools & Links'),
        Text('Guidelines'),
        Text('Knowledge Base'),

      ],
    )
    );
  }
}
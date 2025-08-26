
import 'package:flutter/material.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 79, 243, 175),
      appBar: AppBar(title: Text('Project_Details'),toolbarOpacity: 0.5,),
    body: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('Overview'),
        Text('Objectives'),
        Text('Timeline'),
        Text('Budget'),

      ],
    )
    );
  }
}
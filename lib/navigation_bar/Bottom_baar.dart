import 'package:flutter/material.dart';
import 'package:login_page/navigation_bar/project_details.dart';
import 'package:login_page/navigation_bar/team_members.dart';
import 'package:login_page/navigation_bar/tasks.dart';
import 'package:login_page/navigation_bar/progress.dart';
import 'package:login_page/navigation_bar/resources.dart';
//import 'package:login_page/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var currentpage = 0;

  
  final List<Widget> pages = [
    
    ProjectDetails(),
    TeamMembers(),
    Tasks(),
    Progress(),
    Resources(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: const Color.fromARGB(255, 125, 224, 216),
        selectedItemColor: const Color.fromARGB(255, 194, 137, 204),
        unselectedItemColor: const Color.fromARGB(255, 255, 188, 45),
        currentIndex: currentpage,
        onTap: (value) {
          setState(() => currentpage = value.clamp(0, pages.length-1),
          );
        },
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.work_outlined),
            label: 'Project Details',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            label: 'Team Members',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.task_outlined),
            label: 'Tasks',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Progress',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.webhook_rounded),
            label: 'Resources',
          ),
        ],
      ),
    );
  }
}

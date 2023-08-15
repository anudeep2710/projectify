import 'package:flutter/material.dart';
import 'package:projectify/page/components/tasksdrawer.dart';
import 'package:projectify/page/drawer.dart';
import 'package:projectify/responsive.dart';
import 'package:projectify/page/mainboard.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
              if (Responsive.isDesktop(context))
              Expanded(
                child: tasks_screen(),
              ),
          


           
          ],
        ),
      ),
    );
  }
}
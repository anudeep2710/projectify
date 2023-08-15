import 'package:flutter/material.dart';
import 'package:projectify/constraints.dart';
import 'package:projectify/page/components/header.dart';
import 'package:projectify/responsive.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          primary: false,
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding),
              SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context))
                          Text('roles'), // Removed unnecessary SizedBox
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    SizedBox(width: defaultPadding),
                  // On Mobile means if the screen is less than 850 we don't want to show it
                  if (!Responsive.isMobile(context))
                    Expanded(flex: 3, child: Text('hello')), // Removed const keyword
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

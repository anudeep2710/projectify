import "package:flutter/material.dart";
import "package:projectify/page/drawer.dart";
import "package:projectify/responsive.dart";

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
             
            ]
          ),
        ));
  }
}

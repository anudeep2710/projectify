import 'package:flutter/material.dart';


class LoginField extends StatelessWidget {
  LoginField({super.key,required this.hintText,required this.textchecker,required this.onSaved,required this.icon,required this.obscureText});
  final String hintText;
    final String? Function(String?) textchecker;
        final String? Function(String?) onSaved;
        final Icon icon;
        final bool obscureText;

    


 

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        obscureText:obscureText ,
        onSaved:onSaved ,
        validator:textchecker ,
        decoration: InputDecoration(
          icon:icon,
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(26, 236, 221, 221),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white10,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
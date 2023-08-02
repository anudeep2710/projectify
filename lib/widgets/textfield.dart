import 'package:flutter/material.dart';


class LoginField extends StatelessWidget {
  LoginField({super.key,required this.hintText,required this.textchecker,required this.onSaved});
  final String hintText;
    final String? Function(String?) textchecker;
        final String? Function(String?) onSaved;

    


 

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        onSaved:onSaved ,
        validator:textchecker ,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white10,
              width: 3,
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
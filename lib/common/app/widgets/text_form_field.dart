import 'package:flutter/material.dart';


class JMTextFormField extends StatelessWidget {
  const JMTextFormField({super.key, required this.label, required this.hint,  this.suffixIcon});
  final String label;
  final String hint;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:const BoxConstraints(
          minHeight: 50.0, 
          maxHeight: 55.0, 
        ), 
      
        child: TextFormField(
              decoration:  InputDecoration(
                  label: Text(label),
                  hintText: hint,
                  suffixIcon: Icon(suffixIcon)),

            ),
    );
  }
}
import 'package:flutter/material.dart';
// import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';
import 'package:toast/utils/constants/sizes.dart';

class JwTextFormField extends StatelessWidget {
  const JwTextFormField(
      {super.key,
      this.formKey,
      required this.textEditingController,
      required this.hintText,
      required this.errorText, required this.hidetext, this.onTap, this.validator, this.onChanged,  this.filled=true, required this.label});

  final  formKey;
  final  onTap;
  final  validator;
  final  onChanged;
  final TextEditingController textEditingController;
  final String hintText;
  final String label;
  final String errorText;
  final bool hidetext;
  final bool filled;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: JPad.itemGap,
      child: Container(
        padding: const EdgeInsets.all(0),
        constraints:const BoxConstraints(
          minWidth: 100.0, // Set your minimum width
          maxWidth: 400.0, // Set your maximum width
          minHeight: 30.0, // Set your minimum height
          maxHeight: 45.0, // Set your maximum height
        ), 
        // width: 500,
        // height: 60,
        child: TextFormField(
          
          controller: textEditingController,
          keyboardType: TextInputType.emailAddress,
          obscureText:hidetext,
          onTap: onTap,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            label:Text(label) ,
            hintText: hintText,
            contentPadding: JPad.textFormField,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
              borderSide:const BorderSide(color:Color.fromARGB(255, 192, 192, 192)) 
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
              borderSide:const BorderSide(color:JColor.secondary) 
            ), // Border decoration
            filled: filled,
            fillColor: JColor.bgSecondary
        
          ),
        
        
        ),
      ),
    );
  }
}


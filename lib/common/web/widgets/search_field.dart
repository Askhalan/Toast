
import 'package:flutter/material.dart';
// import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';
import 'package:toast/utils/constants/sizes.dart';

class JSearchField extends StatelessWidget {
  const JSearchField(
      {super.key,
      this.formKey,
      required this.textEditingController,
      required this.hintText,
      required this.errorText,
      required this.hidetext,
      this.onTap,
      this.validator,
      this.onChanged,
      this.filled = true,
      required this.label,
       this.height=45,
       this.width = 400});

  final formKey;
  final onTap;
  final validator;
  final onChanged;
  final TextEditingController textEditingController;
  final String hintText;
  final String label;
  final String errorText;
  final bool hidetext;
  final bool filled;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: JPad.itemGap,
      child: Container(
        padding: const EdgeInsets.only(top: 0),
        constraints: BoxConstraints(
          minWidth: 100.0, // Set your minimum width
          maxWidth: width, // Set your maximum width
          minHeight: 30.0, // Set your minimum height
          maxHeight: height, // Set your maximum height
        ),
        // width: 500,
        // height: 60,
        child: Center(
          child: TextFormField(
            controller: textEditingController,
            keyboardType: TextInputType.emailAddress,
            obscureText: hidetext,
            onTap: onTap,
            validator: validator,
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon:const Icon(Icons.search,color: JColor.icon) ,
                // label: Text(label),
                hintText: hintText,
                contentPadding: JPad.searchField,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(JSize.borderRadLg),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 192, 192, 192))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(JSize.borderRadLg),
                    borderSide: const BorderSide(
                        color: JColor.secondary)), // Border decoration
                filled: filled,
                fillColor: const Color.fromARGB(101, 242, 242, 242)),
          ),
        ),
      ),
    );
  }
}

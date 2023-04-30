import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  Color? color;
  String hintText,labelText;
  TextStyle? style;
  TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController controller;
  TextAlign align=TextAlign.center;

   CustomTextFormField({super.key,required this.hintText,this.color=const Color(0x1F000000),
   this.keyboardType,required this.labelText, this.obscureText=false,this.style,
   required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style: style,
        showCursor: true,
        obscureText: obscureText,
        textAlign: align,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: InputBorder.none,
          label: Center(
            child: Text(labelText),
          ),
          hintText: hintText,
        ),

      ),
    );
  }
}
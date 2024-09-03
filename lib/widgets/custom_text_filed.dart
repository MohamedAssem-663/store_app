import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({
    super.key,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.inputType,
  });
  String? hintText;
  Function(String)? onChanged;
  bool? obscureText;

  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

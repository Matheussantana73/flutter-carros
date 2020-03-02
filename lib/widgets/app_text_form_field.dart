import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final FormFieldValidator<String> validate;
  final bool password;
  final FocusNode nextFocusNode;
  final String label;
  final String hind;

  const AppTextFormField({
    @required this.label,
    @required this.hind,
    this.textInputAction,
    this.focusNode,
    this.keyboardType,
    this.controller,
    this.validate,
    this.password = false,
    this.nextFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      focusNode: focusNode,
      keyboardType: keyboardType,
      validator: validate,
      controller: controller,
      obscureText: password,
      onFieldSubmitted: (String text) {
        if (nextFocusNode != null) {
          FocusScope.of(context).requestFocus(nextFocusNode);
        }
      },
      style: TextStyle(
        fontSize: 25,
        color: Colors.blue,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 25),
        hintText: hind,
        hintStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}

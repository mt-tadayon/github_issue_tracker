import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final bool obscureText;
  final Color borderColor;
  final TextInputType keyboardType;

  const TextFormWidget(
      {Key key,
      @required this.hintText,
      this.iconData,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.borderColor,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 12.0,
          backgroundColor: Colors.red,
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.only(right: 20),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300,
        ),
        prefixIcon: iconData != null
            ? Container(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                margin: const EdgeInsets.only(right: 8.0),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Color(0xFF5EA7BE),
                      width: 1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Icon(
                    iconData,
                    color: const Color(0xFF5EA7BE),
                    size: 22.0,
                  ),
                ),
              )
            : null,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: borderColor == null
              ? BorderSide(
                  color: Colors.transparent,
                )
              : BorderSide(color: borderColor),
        ),
      ),
    );
  }
}

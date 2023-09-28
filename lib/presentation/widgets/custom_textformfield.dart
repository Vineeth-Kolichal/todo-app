import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.maxlines, required this.keyboardType,
  });
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final int? maxlines;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        color: const Color.fromARGB(255, 233, 250, 246),
        child: Material(
          child: TextFormField(
            keyboardType:keyboardType ,
            maxLines: maxlines,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please fill $hintText';
              } else {
                return null;
              }
            },
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

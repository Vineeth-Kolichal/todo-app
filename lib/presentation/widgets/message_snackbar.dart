import 'package:flutter/material.dart';

void messageSnackbar(
    {required BuildContext context,
    required String message,
    bool isError = true}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: isError ? Colors.red : Colors.green,
  ));
}
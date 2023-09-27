import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });
  final String buttonLabel;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: const Color.fromARGB(255, 66, 209, 178)),
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

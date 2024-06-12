import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String texto;

  const CustomText({
    super.key,
    required this.texto,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }
}

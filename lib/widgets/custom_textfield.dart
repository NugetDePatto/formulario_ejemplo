import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String nombre;
  final Function(String) alCambiar;

  const CustomTextField({
    super.key,
    required this.nombre,
    required this.alCambiar,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.nombre,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
          ],
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          onChanged: widget.alCambiar,
        ),
      ],
    );
  }
}

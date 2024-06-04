import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';

import 'package:flutter/material.dart';

class CustomDateTextBox extends StatefulWidget {
  final String nombre;
  final Function(DateTime) alCambiar;
  const CustomDateTextBox({
    super.key,
    required this.nombre,
    required this.alCambiar,
  });

  @override
  State<CustomDateTextBox> createState() => _CustomDateTextBoxState();
}

class _CustomDateTextBoxState extends State<CustomDateTextBox> {
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
        CupertinoDateTextBox(
          initialValue: DateTime.now(),
          //opcion 1
          // onDateChange: (DateTime date) {
          // print('algo');
          //   widget.alCambiar(date);
          // },
          //opcion 2
          onDateChange: widget.alCambiar,
          hintText: widget.nombre,
        ),
      ],
    );
  }
}

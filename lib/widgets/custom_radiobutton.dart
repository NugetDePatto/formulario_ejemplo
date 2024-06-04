import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String nombre;
  final Function(String) alCambiar;
  final List<String> opciones;
  const CustomRadioButton({
    super.key,
    required this.nombre,
    required this.alCambiar,
    required this.opciones,
  });

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String? seleccion;
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
        Wrap(
          children: [
            for (String opcion in widget.opciones)
              Row(
                children: [
                  Radio(
                    value: opcion,
                    groupValue: seleccion,
                    onChanged: (value) {
                      setState(() {
                        seleccion = value;
                        if (value != null) {
                          widget.alCambiar(value);
                        }
                      });
                    },
                  ),
                  Text(opcion),
                ],
              ),
          ],
        ),
      ],
    );
  }
}

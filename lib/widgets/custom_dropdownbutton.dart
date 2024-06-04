import 'package:flutter/material.dart';

class CustomDropDonButton extends StatefulWidget {
  final String nombre;
  final Function(String) alCambiar;
  final List<String> opciones;

  const CustomDropDonButton({
    super.key,
    required this.nombre,
    required this.alCambiar,
    required this.opciones,
  });

  @override
  State<CustomDropDonButton> createState() => _CustomDropDonButtonState();
}

class _CustomDropDonButtonState extends State<CustomDropDonButton> {
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
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade700),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton<String>(
            value: seleccion,
            items: [
              for (String opciones in widget.opciones)
                DropdownMenuItem(
                  value: opciones,
                  child: Text(opciones),
                )
            ],
            onChanged: (String? value) {
              setState(() {
                seleccion = value;
                if (value != null) {
                  widget.alCambiar(value);
                }
              });
            },
            underline: Container(),
            hint: const Text('Selecciona una opción'),
            isExpanded: true,
            padding: const EdgeInsets.all(10),
          ),
        ), //
      ],
    );
  }
}

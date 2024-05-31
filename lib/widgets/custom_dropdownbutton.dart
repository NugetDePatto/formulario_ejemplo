import 'package:flutter/material.dart';

//ponte a chambear juanca
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

        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade700),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton<String>(
            //donde se va a poner la opcion seleccionada
            value: seleccion,
            items: [
              //for each
              for (String opciones in widget.opciones)
                DropdownMenuItem(
                  value: opciones,
                  child: Text(opciones),
                )
            ], //:00
            onChanged: (String? value) {
              setState(() {
                seleccion = value;
                if (value != null) {
                  widget.alCambiar(value);
                }
              });
            },
            underline: Container(),
            hint: Text(widget.nombre),
            isExpanded: true,
            padding: const EdgeInsets.all(10),
          ),
        ), //
      ],
    );
  }
}

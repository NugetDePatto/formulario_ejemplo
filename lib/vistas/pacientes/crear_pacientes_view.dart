import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/pacientes/crear_pacientes_controller.dart';
import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';

class CrearPacienteView extends StatefulWidget {
  const CrearPacienteView({super.key});

  @override
  State<CrearPacienteView> createState() => _CrearPacienteViewState();
}

class _CrearPacienteViewState extends State<CrearPacienteView> {
  CrearPacientesController controller = CrearPacientesController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Paciente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Nombre',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Matricula',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Facultad',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade700),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton<String>(
                value: controller.facultadSeleccionada,
                items: [
                  //for each
                  for (String facultad in controller.facultades)
                    DropdownMenuItem(
                      value: facultad,
                      child: Text(facultad),
                    )
                ],
                onChanged: (String? value) {
                  setState(() {
                    controller.facultadSeleccionada = value!;
                  });
                },
                underline: Container(),
                hint: const Text('Facultad'),
                isExpanded: true,
                padding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Fecha de nacimiento',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CupertinoDateTextBox(
              initialValue: DateTime.now(),
              onDateChange: (DateTime date) {
                print(date);
              },
              hintText: 'Fecha de nacimiento',
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Sexo',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Wrap(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'Masculino',
                      groupValue: controller.sexoSeleccionado,
                      onChanged: (value) {
                        setState(() {
                          controller.sexoSeleccionado = value.toString();
                        });
                      },
                    ),
                    const Text('Masculino'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Femenino',
                      groupValue: controller.sexoSeleccionado,
                      onChanged: (value) {
                        setState(() {
                          controller.sexoSeleccionado = value.toString();
                        });
                      },
                    ),
                    const Text('Femenino'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Prefiero no decirlo',
                      groupValue: controller.sexoSeleccionado,
                      onChanged: (value) {
                        setState(() {
                          controller.sexoSeleccionado = value.toString();
                        });
                      },
                    ),
                    const Text('Prefiero no decirlo'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

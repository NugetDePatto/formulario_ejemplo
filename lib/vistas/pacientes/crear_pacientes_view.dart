import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/pacientes/crear_pacientes_controller.dart';
import 'package:formulario_ejemplo/widgets/custom_datetextbox.dart';
import 'package:formulario_ejemplo/widgets/custom_dropdownbutton.dart';
import 'package:formulario_ejemplo/widgets/custom_radiobutton.dart';
import 'package:formulario_ejemplo/widgets/custom_textfield.dart';

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
        child: ListView(
          children: [
            CustomTextField(
              nombre: 'Nombre del paciente',
              alCambiar: (valor) {},
            ),
            const SizedBox(height: 20),
            CustomTextField(
              nombre: 'Matricula del paciente',
              alCambiar: (valor) {},
            ),
            const SizedBox(height: 20),
            CustomDropDonButton(
              nombre: 'Facultad',
              alCambiar: (valor) {},
              opciones: const [
                'Facultad de Enfermería',
                'Facultad de Ingeniería',
                'Facultad de Medicina',
                'Facultad de Comercio y Administración',
                'Facultad de Derecho y Ciencias Sociales',
                'Facultad de Arquitectura, Diseño y Urbanismo',
                'Facultad de Odontología',
                'Facultad de Musica y Artes',
              ],
            ),
            const SizedBox(height: 20),
            CustomDateTextBox(
              nombre: 'Fecha de Nacimiento',
              alCambiar: (DateTime date) {},
            ),
            const SizedBox(height: 20),
            CustomRadioButton(
              nombre: 'Sexo',
              alCambiar: (value) {},
              opciones: const [
                'Femenino',
                'Masculino',
                'Prefiero no decirlo',
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}

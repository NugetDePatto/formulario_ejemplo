import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/pacientes/crear_pacientes_view.dart';

class PacientesView extends StatefulWidget {
  const PacientesView({super.key});

  @override
  State<PacientesView> createState() => _PacientesViewState();
}

class _PacientesViewState extends State<PacientesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < 20; i++)
            ListTile(
              title: Text('Paciente $i'),
              subtitle: Text('Paciente $i'),
              leading: const CircleAvatar(
                child: Text('P'),
              ),
              onTap: () {},
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // va a mostrar el formulario para crear un nuevo paciente
          Navigator.pushNamed(context, '/crear_paciente');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

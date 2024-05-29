import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/navigation/navigation_view.dart';
import 'package:formulario_ejemplo/vistas/pacientes/crear_pacientes_view.dart';

Map<String, Widget Function(BuildContext)> get rutas => {
      '/': (context) => const NavigationView(),
      '/crear_paciente': (context) => const CrearPacienteView(),
    };

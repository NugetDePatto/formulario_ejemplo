import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/graficas/graficas_view.dart';
import 'package:formulario_ejemplo/vistas/crear_formulario/crear_formulario_view.dart';
import 'package:formulario_ejemplo/vistas/pacientes/pacientes_view.dart';

class NavigationController {
  int indice = 0;

  Widget get vistas {
    switch (indice) {
      case 0:
        return const Text('Inicio', style: TextStyle(fontSize: 30));
      case 1:
        return const PacientesView();
      case 2:
        return const GraficasView();
      case 3:
        return const CrearFormularioView();
      default:
        return const Text('Error');
    }
  }
}

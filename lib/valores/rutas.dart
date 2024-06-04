import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/navigation/navigation_view.dart';
import 'package:formulario_ejemplo/vistas/pacientes/crear_pacientes_view.dart';
//aqui puede haber una variable que se llame ruta_inicial que sea la ruta que se quiera que se abra al iniciar la app

Map<String, Widget Function(BuildContext)> get rutas => {
      '/': (context) => const NavigationView(),
      '/crear_paciente': (context) => const CrearPacienteView(),
    };

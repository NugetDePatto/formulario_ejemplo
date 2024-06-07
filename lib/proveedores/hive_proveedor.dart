import 'package:formulario_ejemplo/proveedores/basededatos_proveedor.dart';
import 'package:hive/hive.dart';

class HiveProveedor implements BasededatosProveedor {
  @override
  Future<void> actualizarDato(String ruta, String llave, dynamic datos) async {}

  @override
  Future<void> eliminarDato(String ruta, String llave) async {}

  @override
  Future<void> insertarDato(String ruta, String llave, dynamic datos) async {}

  @override
  Future obtenerDato(String ruta, String llave) async {
    return {};
  }

  @override
  Future<List> obtenerDatos(String ruta) async {
    return [];
  }
}

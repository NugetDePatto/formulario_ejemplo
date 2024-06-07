abstract class BasededatosProveedor {
  Future<List<dynamic>> obtenerDatos(String ruta);
  Future<dynamic> obtenerDato(String ruta, String llave);
  Future<void> insertarDato(String ruta, String llave, dynamic datos);
  Future<void> eliminarDato(String ruta, String llave);
  Future<void> actualizarDato(String ruta, String llave, dynamic datos);
}

/// proveedores
/// servicios
/// modelos
/// repositorios
/// controladores
/// vistas
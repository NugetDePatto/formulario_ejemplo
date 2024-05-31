import 'package:flutter/material.dart';
import 'package:formulario_ejemplo/vistas/navigation/navigation_controller.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  NavigationController controller = NavigationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation View'),
      ),

      /// Este widget es para poner un menu en la parte inferior de la pantalla
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Inicio',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Pacientes',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'Graficas',
      //     ),
      //   ],
      //   selectedItemColor: Colors.amber[800],
      // ),
      body: controller.vistas,
      drawer: Drawer(
        child: ListView(
          children: [
            /// Con este widget se le puede poner una imagen, es como un encabezado
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text(
            //     'Menu',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 24,
            //     ),
            //   ),
            // ),
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                controller.indice = 0;
                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              title: const Text('Crear Formulario'),
              onTap: () {
                controller.indice = 3;
                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              title: const Text('Pacientes'),
              onTap: () {
                controller.indice = 1;
                Navigator.pop(context);
                setState(() {});
              },
            ),
            ListTile(
              title: const Text('Graficas'),
              onTap: () {
                controller.indice = 2;
                Navigator.pop(context);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

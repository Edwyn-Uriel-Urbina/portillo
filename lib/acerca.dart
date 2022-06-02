import 'package:flutter/material.dart';
import 'package:urbina/clientes.dart';
import 'package:urbina/empleados.dart';
import 'package:urbina/servicios.dart';
import 'package:urbina/sesion.dart';
import 'package:urbina/sucursales.dart';
import 'package:urbina/desarrollador.dart';

class AcercaPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Application name
        title: 'Gas Natural',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: '/',
        routes: {
          // Cuando naveguemos hacia la ruta "/", crearemos el Widget Pagina1
          '/paginaSesion': (context) => SesionPage(),
          // Cuando naveguemos hacia la ruta "/second", crearemos el Widget Pagina2
          '/paginaServicios': (context) => ServiciosPage(),
          '/paginaEmpleados': (context) => EmpleadosPage(),
          '/paginaClientes': (context) => ClientesPage(),
          '/paginaAcerca': (context) => AcercaPage(),
          '/paginaSucursales': (context) => SucursalesPage(),
          '/paginaDesarrollador': (context) => DesarrolladorPage(),
        });
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Acerca',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(95, 115, 254, 1),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color.fromRGBO(95, 115, 254, 1)),
              accountName: Text(
                "Gas Natural",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "pinkesh.earth@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_right_outlined,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Inicio de Sesion'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaSesion');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.api,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Empleados'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaEmpleados');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.umbrella,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Clientes'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaClientes');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.headset_off,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Servicios'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaServicios');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_airport,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Sucursales'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaSucursales');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Acerca de la App'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaAcerca');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fireplace,
                color: Color.fromRGBO(66, 206, 245, 1),
              ),
              title: const Text('Desarrollador'),
              onTap: () {
                Navigator.pushNamed(context, '/paginaDesarrollador');
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Mis Aprendizajes',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'La ayuda del  aprendizaje que podemos realizar en esta actividad nos dice que podemos aprender a desarrollar de manera efectiva nuestras página en un modo de facilitar las cosas de poco a poco, sin embargo la práctica que hacemos con este tipo de actividades nos ayudan a mejorar para el mismo desarrollo de la página. \nA su vez podemos decir que entre más aprendemos estamos más cercas de ser programadores, con el aprendizaje de desarrollo de aplicaciones web y más lenguajes de programación que tenemos por aprender. ',
                              style: TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://raw.githubusercontent.com/Edwyn-Uriel-Urbina/Gpo-6toI-Mis-Imagenes-UII/main/Gas%20Natural/among-us.png',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

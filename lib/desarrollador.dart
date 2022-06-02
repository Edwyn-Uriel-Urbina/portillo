import 'package:flutter/material.dart';
import 'package:urbina/acerca.dart';
import 'package:urbina/clientes.dart';
import 'package:urbina/empleados.dart';
import 'package:urbina/servicios.dart';
import 'package:urbina/sesion.dart';
import 'package:urbina/sucursales.dart';

class DesarrolladorPage extends StatelessWidget {
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
          'Desarrollador',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF5F73FE),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x230F1113),
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Tema',
                                style: TextStyle(
                                  fontFamily: 'Overpass',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Gas Natural',
                                style: TextStyle(
                                  fontFamily: 'Overpass',
                                  color: Colors.white,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Github Imagenes',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'https://github.com/Edwyn-Uriel-Urbina/Gpo-6toI-Mis-Imagenes-UII/blob/main/Gas%20Natural/amongus.gif',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Grado y Grupo',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        '6º',
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        'I',
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          color: Colors.yellow,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Text(
                          'Materia',
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'DAMoviles Android 2022',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Hecho por',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFF5F73FE),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                              child: Container(
                                width: 60,
                                height: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://raw.githubusercontent.com/Edwyn-Uriel-Urbina/Gpo-6toI-Mis-Imagenes-UII/main/Gas%20Natural/ed.jpg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Edwyn Uriel Urbina',
                                    style: TextStyle(
                                      fontFamily: 'Overpass',
                                      color: Color(0xFF5F73FE),
                                    ),
                                  ),
                                  Text(
                                    'a.19308051280537@cbtis128.edu.mx',
                                    style: TextStyle(
                                      fontFamily: 'Overpass',
                                      color: Color(0xFF5F73FE),
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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

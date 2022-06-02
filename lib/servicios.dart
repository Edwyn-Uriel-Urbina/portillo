import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:urbina/acerca.dart';
import 'package:urbina/clientes.dart';
import 'package:urbina/empleados.dart';
import 'package:urbina/sesion.dart';
import 'package:urbina/sucursales.dart';
import 'package:urbina/desarrollador.dart';

class ServiciosPage extends StatelessWidget {
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
          'Servicios',
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
              Expanded(
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    childAspectRatio: 2,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 10,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.network(
                                'https://raw.githubusercontent.com/Edwyn-Uriel-Urbina/Gpo-6toI-Mis-Imagenes-UII/main/Gas%20Natural/gas8.jpg',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Plan A',
                                    style: TextStyle(),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '\$500',
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          color: Color(0xCE002D62),
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        '1 Mes',
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color(0xFF5F73FE),
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 10,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.network(
                                'https://raw.githubusercontent.com/Edwyn-Uriel-Urbina/Gpo-6toI-Mis-Imagenes-UII/main/Gas%20Natural/gas8.png',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Plan B',
                                    style: TextStyle(),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '\$600',
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          color: Color(0xCE002D62),
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        '1 Mes',
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color(0xFF5F73FE),
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: 10,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.network(
                                'https://raw.githubusercontent.com/Edwyn-Uriel-Urbina/Gpo-6toI-Mis-Imagenes-UII/main/Gas%20Natural/gas5.jpg',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Plan C',
                                    style: TextStyle(),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '\$700',
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          color: Color(0xCE002D62),
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        '1 Mes',
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color(0xFF5F73FE),
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}

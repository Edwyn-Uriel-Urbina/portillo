import 'package:flutter/material.dart';
import 'package:urbina/acerca.dart';
import 'package:urbina/clientes.dart';
import 'package:urbina/empleados.dart';
import 'package:urbina/servicios.dart';
import 'package:urbina/sucursales.dart';
import 'package:urbina/desarrollador.dart';

class SesionPage extends StatelessWidget {
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
          'Sesion',
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
      body: Center(
        child: (Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
          child: Material(
            color: Colors.transparent,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Bienvenida/o',
                              style: TextStyle(),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 2,
                            shape: const CircleBorder(),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0xFFDBE2E7),
                                ),
                              ),
                              child: Icon(
                                Icons.phone_rounded,
                                color: Color(0xFF5F73FE),
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Correo',
                                labelStyle: TextStyle(
                                  fontFamily: 'Overpass',
                                  color: Color(0xFF95A1AC),
                                ),
                                hintText: 'Ingresa tu Correo',
                                hintStyle: TextStyle(
                                  fontFamily: 'Overpass',
                                  color: Color(0xFF95A1AC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                                prefixIcon: Icon(
                                  Icons.mail_rounded,
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Overpass',
                                color: Color(0xFF2B343A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                                labelStyle: TextStyle(
                                  fontFamily: 'Overpass',
                                  color: Color(0xFF95A1AC),
                                ),
                                hintText: 'Ingresa tu Contraseña',
                                hintStyle: TextStyle(
                                  fontFamily: 'Overpass',
                                  color: Color(0xFF95A1AC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                                prefixIcon: Icon(
                                  Icons.person_sharp,
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Overpass',
                                color: Color(0xFF2B343A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              print('ButtonForgotPassword pressed ...');
                            },
                            child: const Text('Forgot Password?'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              side: BorderSide(color: Color.fromRGBO(95, 115, 254, 1), width: 1),
                              primary: Color.fromRGBO(95, 115, 254, 1),
                              onPrimary: Colors.white,
                            ),
                            child: const Text('Sign In'),
                            onPressed: () {
                              Navigator.pushNamed(context, '/paginaServicios');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}

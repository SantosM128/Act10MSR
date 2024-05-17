import 'package:flutter/material.dart';

import 'formularioSucursal.dart';
import 'formularioServicios.dart';
import 'formularioProductos.dart';
import 'formularioCitas.dart';
import 'formularioNosotros.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String formS1 = FormS1.routeName;
  static const String formE2 = FormE2.routeName;
  static const String formP3 = FormP3.routeName;
  static const String formC4 = FormC4.routeName;
  static const String formA5 = FormA5.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        formS1: (context) => FormS1(),
        formE2: (context) => FormE2(),
        formP3: (context) => FormP3(),
        formC4: (context) => FormC4(),
        formA5: (context) => FormA5(),
      },
      home: FormS1(),
    );
  }
}

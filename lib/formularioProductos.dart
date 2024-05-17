import 'package:flutter/material.dart';
import 'package:santosact10/drawer_menu.dart';

class FormE2 extends StatefulWidget {
  static const String routeName = '/formE2';

  @override
  _FormE2State createState() => _FormE2State();
}

class _FormE2State extends State<FormE2> {
  TextEditingController idEmpleadoController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController nombresController = TextEditingController();
  TextEditingController apellidosController = TextEditingController();
  TextEditingController puestoController = TextEditingController();
  TextEditingController calleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Veterinaria",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff8b2020),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Producto',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0029b0)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Producto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idEmpleadoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff0029b0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff0029b0)), // Color del borde
                  ),
                  hintText: 'Escribe el Id del Producto',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre delProducto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idSucursalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff0029b0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff0029b0)), // Color del borde
                  ),
                  hintText: 'Escribe el Nombre del Producto',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Descripción', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombresController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_decrease, color: Color(0xff0029b0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff0029b0)), // Color del borde
                  ),
                  hintText: 'Escribe la descripcion',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Precio del producto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apellidosController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_decrease, color: Color(0xff0029b0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff0029b0)), // Color del borde
                  ),
                  hintText: 'Escribe el Precio del producto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Sucursal', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: puestoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.perm_contact_cal,
                      color: Color(0xff0029b0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff0029b0)), // Color del borde
                  ),
                  hintText: 'Escribe la Sucursal',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Total de Venta', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: calleController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.home, color: Color(0xff0029b0)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff0029b0)), // Color del borde
                  ),
                  hintText: 'Escribe el Total de Venta',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idEmpleadoController.text);
                  print(idSucursalController.text);
                  print(nombresController.text);
                  print(apellidosController.text);
                  print(puestoController.text);
                  print(calleController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff0029b0)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

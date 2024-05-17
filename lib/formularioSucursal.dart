import 'package:flutter/material.dart';
import 'package:santosact10/drawer_menu.dart';

class FormP3 extends StatefulWidget {
  static const String routeName = '/formP3';

  @override
  _FormP3State createState() => _FormP3State();
}

class _FormP3State extends State<FormP3> {
  TextEditingController idPedidoController = TextEditingController();
  TextEditingController idClienteController = TextEditingController();
  TextEditingController idEmpleadoController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController detallesController = TextEditingController();
  TextEditingController preciototalController = TextEditingController();
  TextEditingController fechaEntregaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Veterinaria",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff20518b),
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
                'Formulario Sucursal',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff537db5)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Id Sucursal', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idPedidoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el ID de la Sucursal',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre de la Sucursal',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idClienteController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el Nombre de la Sucursal',
                ),
                keyboardType: TextInputType.number,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Ciudad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idEmpleadoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el Nombre de la Ciudad',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Calle', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idSucursalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el Nombre de la Calle',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Numero Exterior', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantidadController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el Numero Exterior',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('telefono', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: detallesController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.call, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el Numero de telefono',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Gmail', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: preciototalController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.payment, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe el Gmail',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Id Empleado', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaEntregaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff537db5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff537db5)), // Color del borde
                  ),
                  hintText: 'Escribe Id Ampleado',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idPedidoController.text);
                  print(idClienteController.text);
                  print(idEmpleadoController.text);
                  print(idSucursalController.text);
                  print(cantidadController.text);
                  print(detallesController.text);
                  print(preciototalController.text);
                  print(fechaEntregaController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff3e6777)), // Cambia el color de fondo
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
                child: const Text(
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

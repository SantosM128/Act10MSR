import 'package:flutter/material.dart';
import 'package:santosact10/drawer_menu.dart';

class FormC4 extends StatefulWidget {
  static const String routeName = '/formC4';

  @override
  _FormC4State createState() => _FormC4State();
}

class _FormC4State extends State<FormC4> {
  TextEditingController idCitaeController = TextEditingController();
  TextEditingController nombresController = TextEditingController();
  TextEditingController apellidoPController = TextEditingController();
  TextEditingController apellidoMController = TextEditingController();
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
                'Formulario Citas',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: (Color(0xff0029b0))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Cita', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idCitaeController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: (Color(0xff0029b0))),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: (Color(0xff0029b0))), // Color del borde
                  ),
                  hintText: 'Escribe el ID de Cita',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombresController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_fields, color: (Color(0xff0029b0))),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: (Color(0xff0029b0))), // Color del borde
                  ),
                  hintText: 'Escriba los nombres',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Numero de Telefono', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apellidoPController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.first_page, color: (Color(0xff0029b0))),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: (Color(0xff0029b0))), // Color del borde
                  ),
                  hintText: 'Escribe el Numero de Telefono',
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Calle', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apellidoMController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.text_fields, color: (Color(0xff0029b0))),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: (Color(0xff0029b0))), // Color del borde
                  ),
                  hintText: 'Escribe la Calle',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Sucursal cercana', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: calleController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.place, color: (Color(0xff0029b0))),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: (Color(0xff0029b0))), // Color del borde
                  ),
                  hintText: 'Escribe el Sucursal cercana',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idCitaeController.text);
                  print(nombresController.text);
                  print(apellidoPController.text);
                  print(apellidoMController.text);
                  print(calleController.text);
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

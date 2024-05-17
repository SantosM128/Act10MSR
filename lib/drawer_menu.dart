import 'package:flutter/material.dart';

//import 'main.dart';
import 'package:santosact10/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.help,
              text: 'Form Nosotros',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formS1)}),
          _buildDrawerItem(
              icon: Icons.shopping_cart,
              text: 'Form Productos',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formE2)}),
          _buildDrawerItem(
              icon: Icons.location_pin,
              text: 'Form Sucursales',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formP3)}),
          _buildDrawerItem(
              icon: Icons.calendar_month,
              text: 'Form Citas',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formC4)}),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Form Servicios',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.formA5)}),
          const Divider(),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return const DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/dal2.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Petco Productos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

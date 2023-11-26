import 'package:flutter/material.dart';

class Bike extends StatelessWidget {
  const Bike({super.key});

   @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bike'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navegar a otra ruta cuando se presione el botón
              Navigator.pushNamed(context, '/');
            },
            child: Text('Pagina Principal'),
          ),

            ElevatedButton(
            onPressed: () {
              // Navegar a otra ruta cuando se presione el botón
              Navigator.pushNamed(context, '/firstPage');
            },
            child: Text('Agregar Usuario'),
          ),

        ],
      ),
    );
  }
}
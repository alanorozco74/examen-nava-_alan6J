import 'package:flutter/material.dart';
import 'pago_screen.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a Pagar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PagoScreen()),
            );
          },
        ),
      ),
    );
  }
}

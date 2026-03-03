import 'package:flutter/material.dart';
import 'package:myapp/exito_screen.dart';

class RastreoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estado del Envío"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("¡Hola!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Text("Tu pedido está en camino y llegará en:"),
            Text(
              "3 - 7 días hábiles",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Divider(height: 40),
            Spacer(),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Icon(
                  Icons.shopping_basket_outlined,
                  size: 150,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Positioned(
                  top: 40,
                  child: Icon(
                    Icons.access_time,
                    size: 40,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            Text("Preparando tu pedido", style: TextStyle(fontSize: 20)),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExitoScreen()),
                );
              },
              child: Text("Pago Exitoso"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Theme.of(context).colorScheme.onSecondary,
              ),
            )
          ],
        ),
      ),
    );
  }
}

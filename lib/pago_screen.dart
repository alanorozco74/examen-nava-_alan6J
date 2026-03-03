import 'package:flutter/material.dart';
import 'rastreo_screen.dart';

class PagoScreen extends StatefulWidget {
  @override
  _PagoScreenState createState() => _PagoScreenState();
}

class _PagoScreenState extends State<PagoScreen> {
  late TextEditingController _importeController;

  @override
  void initState() {
    super.initState();
    _importeController = TextEditingController(text: '2,000');
  }

  @override
  void dispose() {
    _importeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forma de Pago")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "N° Tarjeta")),
            TextField(decoration: InputDecoration(labelText: "Caducidad")),
            TextField(decoration: InputDecoration(labelText: "Código Seguridad")),
            TextField(
              controller: _importeController,
              decoration: InputDecoration(labelText: "Importe"),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Cancelar"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RastreoScreen()),
                    );
                  },
                  child: Text("Pagar"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
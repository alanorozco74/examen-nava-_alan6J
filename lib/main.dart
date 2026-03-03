import 'package:flutter/material.dart';
import 'pago_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App de Pedidos',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF004D40), // A deep teal color
        brightness: Brightness.light,
        primary: Color(0xFF004D40), // Dark teal for primary elements
        secondary: Color(0xFF00796B), // A slightly lighter teal for secondary elements
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF004D40), // Dark teal for AppBar
        foregroundColor: Colors.white, // White text on AppBar
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF00796B), // Lighter teal for buttons
          foregroundColor: Colors.white, // White text on buttons
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      useMaterial3: true,
    ),
    home: PagoScreen(),
  ));
}

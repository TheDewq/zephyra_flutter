import 'package:flutter/material.dart';
import 'package:zephyra_flutter/singleton/carrito_manager.dart';
import 'package:zephyra_flutter/ui/screens/main_screen.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> get_info() async {
    final response = await http
        .get(Uri.parse("https://solar-blasts.000webhostapp.com/productos.php"));
    if (response.statusCode == 200) {
      print("¡Solicitud exitosa!");
      carrito_manager().set_db_rpt(response.body);
    } else {
      print("Error en la solicitud: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    // Llama a get_info(), que es un método asíncrono
    get_info();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: main_screen());
  }
}

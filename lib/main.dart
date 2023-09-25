//import 'package:app1/src/screen/contactos_screen.dart';
import 'package:app1/Practica2309/ejemploFuture.dart';
//import 'package:app1/src/screen/productos_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: CambiarColor(),
      //home: ContactosScreen(),
      home: EjemploFutere(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer ejercicio'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}

class CambiarColor extends StatefulWidget {
  const CambiarColor({super.key});

  @override
  State<CambiarColor> createState() => _CambiarColorState();
}

class _CambiarColorState extends State<CambiarColor> {
  int contador = 0;
  Color iconColor = Colors.lightBlue;

  void changeColor() {
    setState(() {
      if (contador % 2 != 1) {
        // Cambia el color del icono solo cuando el contador sea impar
        iconColor = Colors.amber; // Cambia esto al color deseado
        if (contador >= 10) {
          iconColor = Colors.red; // Cambia esto al color deseado
        }
      } else {
        iconColor = Colors.lightBlue;
      }
      contador++;
    });
  }

  void changeColor1() {
    //deja la bombilla en rojo despues del clic 10
    setState(() {
      if (contador >= 9) {
        // Cambia el color del icono solo cuando el valor sea mayor o igual a 10
        iconColor = Colors.red; // Cambia esto al color deseado
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio encender/apagar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Encender y apagar:',
              style: TextStyle(fontSize: 35, color: Colors.blue),
            ),
            Text(
              contador.toString(),
              style: const TextStyle(fontSize: 50, color: Colors.red),
            ),
            Icon(
              Icons.lightbulb,
              size: 100.0,
              color: iconColor, // Usa el color actual del estado
            ),
            ElevatedButton(
              onPressed: () {
                // Llama a la función para cambiar el color ambar
                changeColor();
                // Llama a la función para cambiar el color rojo
                changeColor1();
              },
              child: const Icon(Icons.add_circle),
            ),
          ],
        ),
      ),
    );
  }
}

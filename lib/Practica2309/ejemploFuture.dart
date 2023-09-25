import 'dart:math';
import 'package:flutter/material.dart';

class EjemploFutere extends StatefulWidget {
  const EjemploFutere({super.key});

  @override
  State<EjemploFutere> createState() => _EjemploFutere();
}

class _EjemploFutere extends State<EjemploFutere> {
  late Future<int> numero;
  final Random _random =
      Random(); // random para cmabiar color a la variable de numero
  Color colors = const Color.fromARGB(255, 132, 12, 201);
  Color colorsBackground = const Color.fromARGB(255, 152, 201, 19);

  @override
  void initState() {
    super.initState();
    numero = obtenerNumero();
  }

  void changeNumberColor() {
    //deja la bombilla en rojo despues del clic 10
    setState(() {
      obtenerNumero();
      colors = Color.fromARGB(
        //cambia color el número
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
      colorsBackground = Color.fromARGB(
        //cambia color el fondo
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  Future<int> obtenerNumero() {
    return Future.delayed(const Duration(seconds: 2), () {
      //return 10;
      return Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorsBackground,
      body: Center(
        child: FutureBuilder(
          future: obtenerNumero(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  int data = snapshot.data!;
                  return Text(
                    data.toString(),
                    style: TextStyle(
                      color: colors,
                      fontSize: 100,
                    ),
                  );
                } else {
                  return const Text('No hay datos');
                }
            }

            //  if (snapshot.hasData) {
            // } else {
            //  return const CircularProgressIndicator();
            // }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeNumberColor();
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

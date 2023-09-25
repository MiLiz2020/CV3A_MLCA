import 'dart:math';

import 'package:flutter/material.dart';

class EjemploFutere extends StatefulWidget {
  const EjemploFutere({super.key});

  @override
  State<EjemploFutere> createState() => _EjemploFutere();
}

class _EjemploFutere extends State<EjemploFutere> {
  late Future<int> numero;
  @override
  void initState() {
    super.initState();
    numero = obtenerNumero();
  }

  Future<int> obtenerNumero() {
    return Future.delayed(const Duration(seconds: 3), () {
      //return 10;
      return Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: obtenerNumero(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              int data = snapshot.data!;
              return Text(
                data.toString(),
                style: const TextStyle(
                  color: Color.fromARGB(255, 23, 155, 12),
                  fontSize: 25,
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

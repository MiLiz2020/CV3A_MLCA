import 'package:app1/src/models/Persona.dart';
import 'package:flutter/material.dart';

class ContactosScreen extends StatelessWidget {
  ContactosScreen({super.key});

  final List<Persona> contactos = [
    Persona(foto: '', nombre: "Liz"),
    Persona(foto: '', nombre: "Perla"),
    Persona(foto: '', nombre: "Yaz"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Contactos")),
      body: ListView.builder(
        itemCount:
            contactos.length, //tamaño de lista necesario para utilziar list
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyMSYp_UG86g8q2aBM0RMipS0LlikKfndlUw&usqp=CAU'),
            ),
            title: Text(contactos[index].nombre),
            subtitle: const Text('Apellidos'),
            //tileColor: Colors.lime,
            trailing: const Icon(Icons.arrow_right),
          );
        }, //orgien de datos para procesar
      ),
    );
  }
}

import 'package:app1/src/models/producto.dart';
import 'package:flutter/material.dart';

class ProductosScreen extends StatelessWidget {
  ProductosScreen({super.key});

//lista de productos
  final List<Producto> productos = [
    Producto(
        foto: '',
        producto: 'lápiz',
        stock: 0,
        url:
            'https://lumen.com.mx/Content/Images/productPics_180x180/portaminas-0-5mm-pentel-twis-erase-0-5mm-marca-pentel-sku-238272(2).jpg'),
    Producto(
        foto: '',
        producto: 'goma',
        stock: 15,
        url:
            'https://static.wixstatic.com/media/55da70_8f504948d44f4297bf108d14755293e6~mv2.jpg/v1/fill/w_447,h_499,al_c,q_85/55da70_8f504948d44f4297bf108d14755293e6~mv2.jpg'),
    Producto(
        foto: '',
        producto: 'lapicero',
        stock: 0,
        url:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF2TLe0ktUcVAyXwS4qn9Uwp8BNxE7MstI9A&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    Color cambiarColorProducto =
        Colors.white; //variable para cambiar color de tileColor
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Productos")),
      body: ListView.builder(
        itemCount:
            productos.length, //tamaño de lista necesario para utilzar list
        itemBuilder: (context, index) {
          if (productos[index].stock == 0) {
            //sentencia para validar la existencia
            cambiarColorProducto = Colors.red;
          } else {
            cambiarColorProducto = Colors.white;
          }
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('${productos[index].url}')
                //child: (Text(' ${productos[index]}'))
                ),
            title: Text(productos[index].producto,
                style: const TextStyle(fontSize: 30, color: Colors.blue)),
            tileColor: cambiarColorProducto,
            subtitle: Text(productos[index].stock.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.grey)),
            //tileColor: Colors.lime,
            trailing: const Icon(Icons.arrow_right),
          );
        }, //orgien de datos para procesar
      ),
    );
  }
}

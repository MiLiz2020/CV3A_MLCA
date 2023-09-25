class Producto {
  String producto;
  String? foto;
  int? stock;
  String? url; //varaible para url de internet, sin guardar imagenes

  Producto(
      {required this.producto,
      this.foto,
      this.stock,
      this.url}); // llaves significa que las variables pueden llevar diferente orden
}

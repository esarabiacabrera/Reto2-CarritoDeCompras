import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://thumbs.dreamstime.com/z/ilustraci%C3%B3n-de-contorno-vectores-icono-carrito-compras-vector-iconos-signo-carro-esquema-s%C3%ADmbolo-aislado-173223244.jpg")),
      ),
    );
  }
}

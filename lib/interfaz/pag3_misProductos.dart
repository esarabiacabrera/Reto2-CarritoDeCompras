import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controladorGeneral.dart';

class pag3_misProductos extends StatefulWidget {
  const pag3_misProductos({super.key});

  @override
  State<pag3_misProductos> createState() => _pag3_misProductosState();
}

class _pag3_misProductosState extends State<pag3_misProductos> {
  controladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: control.productosAgregados.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image(
                          image: NetworkImage(
                              control.productosAgregados[index].imagen)),
                      title: Text(control.productosAgregados[index].nombre),
                      subtitle: Row(
                        children: [
                          Text("Precio: " +
                              control.productosAgregados[index].precio
                                  .toString() +
                              " /cantidad : " +
                              control.productosAgregados[index].cantidad
                                  .toString()),
                          IconButton(
                              onPressed: () {
                                int actualizarCantidad = 0;

                                control.cambiarCantidadCarrito(
                                    index, actualizarCantidad);
                                control.productosCarrito();
                                control.productosAgregados.refresh();
                                control.pr.refresh();
                              },
                              icon: Icon(
                                Icons.clear_sharp,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      trailing: Text(
                          (control.productosAgregados[index].cantidad *
                                  control.productosAgregados[index].precio)
                              .toString()),
                    );
                  },
                ),
              ),
              Text(
                "Total a pagar: " + control.totalPagar().toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  control.productosCarrito();
                  control.comprar();
                  control.pr.refresh();
                  control.cambiarPosicion(0);
                },
                icon: Icon(Icons.save),
                label: Text("Comprar"),
              )
            ],
          ),
        ));
  }
}

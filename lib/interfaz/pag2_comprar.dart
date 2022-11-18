import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controladorGeneral.dart';

class pag2_comprar extends StatefulWidget {
  const pag2_comprar({super.key});

  @override
  State<pag2_comprar> createState() => _pag2_comprarState();
}

class _pag2_comprarState extends State<pag2_comprar> {
  controladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: ListView.builder(
            itemCount: control.pr.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(control.pr[index].imagen)),
                title: Text(control.pr[index].nombre +
                    "/" +
                    control.pr[index].precio.toString()),
                trailing: Text(control.pr[index].cantidad.toString()),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = control.pr[index].cantidad + 1;
                          control.cambiarCantidad(index, nuevaCantidad);
                          control.pr.refresh();
                        },
                        icon: Icon(Icons.arrow_upward_outlined)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = control.pr[index].cantidad - 1;
                          if (nuevaCantidad < 0) {
                            nuevaCantidad = 0;
                          }
                          control.cambiarCantidad(index, nuevaCantidad);
                          control.pr.refresh();
                        },
                        icon: Icon(Icons.arrow_drop_down_circle_outlined))
                  ],
                ),
              );
            },
          ),
        ));
  }
}

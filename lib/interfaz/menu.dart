import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 22, 75, 198)),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://mundowin.com/wp-content/uploads/2020/02/fix-corrupt-user-profile-windows-pc.png"),
                    ),
                    accountName: Text("Equipo 9-NRC2289"),
                    accountEmail: Text("Mision TIC"))),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.pop(context);
                control.cambiarPosicion(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Comprar"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.pop(context);
                control.cambiarPosicion(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits_sharp),
              title: Text("Mis productos"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.pop(context);
                control.cambiarPosicion(2);
                control.productosCarrito();
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt_outlined),
              title: Text("Acerca de.."),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.pop(context);
                control.cambiarPosicion(3);
              },
            )
          ],
        ),
      ),
    );
  }
}

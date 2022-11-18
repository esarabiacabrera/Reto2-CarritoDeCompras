import 'package:flutter/material.dart';

class pag4_desarrollador extends StatefulWidget {
  const pag4_desarrollador({super.key});

  @override
  State<pag4_desarrollador> createState() => _pag4_desarrolladorState();
}

class _pag4_desarrolladorState extends State<pag4_desarrollador> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text("Edinson Sarabia"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.person),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text("Ximena Rosales"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.person),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text("Segundo Arturo Arboleda"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.person),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text("Emiro Galvis"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.person),
              ),
            ),
            Card(
              color: Colors.lightBlue[50],
              child: ListTile(
                title: Text("Bryner Ramirez"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.person),
              ),
            )
          ],
        ),
      ),
    );
  }
}

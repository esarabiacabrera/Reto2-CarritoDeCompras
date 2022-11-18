import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/interfaz/menu.dart';
import 'package:reto2/interfaz/pag1_inicio.dart';
import 'package:reto2/interfaz/pag2_comprar.dart';
import 'package:reto2/interfaz/pag3_misProductos.dart';
import 'package:reto2/interfaz/pag4_desarrollador.dart';

import '../controladores/controladorGeneral.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Shopping'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [
  pag1_inicio(),
  pag2_comprar(),
  pag3_misProductos(),
  pag4_desarrollador()
];

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[control.posicion]),
    );
  }
}

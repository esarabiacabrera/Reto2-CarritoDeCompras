import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controladorGeneral.dart';

import 'interfaz/home.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}

import 'package:get/get.dart';
import 'package:reto2/clases/producto.dart';

class controladorGeneral extends GetxController {
  final _posicion = 0.obs;

  void cambiarPosicion(int x) {
    _posicion.value = x;
  }

  int get posicion => _posicion.value;

  //#####
  final pr = <productos>[].obs;
  final productosAgregados = <productos>[].obs;

  @override
  void onInit() {
    pr.add(productos(
        "Adidas",
        "https://static.dafiti.com.co/p/adidas-performance-1412-7302821-1-product.jpg",
        1,
        190000,
        0));

    pr.add(productos(
        "Nike",
        "https://static.dafiti.com.co/p/adidas-performance-1873-0454091-1-zoom.jpg",
        1,
        210000,
        0));
    pr.add(productos(
        "Puma",
        "https://static.dafiti.com.co/p/tellenzi-0891-3161302-1-catalog-new.jpg",
        1,
        170000,
        0));

    // TODO: implement onInit
    super.onInit();
  }

  void productosCarrito() {
    productosAgregados.clear();
    productosAgregados.addAll(pr);
    productosAgregados.retainWhere((element) {
      return element.cantidad > 0;
    });
  }

  void cambiarCantidad(int posicionProducto, int nuevaCantidad) {
    pr[posicionProducto].cantidad = nuevaCantidad;
  }

  void cambiarCantidadCarrito(int posicionProducto, int nuevaCantidad) {
    productosAgregados[posicionProducto].cantidad = nuevaCantidad;
  }

  int totalPagar() {
    int total = 0;
    for (var i = 0; i < productosAgregados.length; i++) {
      total =
          total + productosAgregados[i].cantidad * productosAgregados[i].precio;
    }
    return total;
  }

  void comprar() {
    for (var i = 0; i < pr.length; i++) {
      pr[i].cantidad = 0;
    }
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zephyra_flutter/ui/views/carrito_items/carrito_item.dart';

class carrito_manager {
  static carrito_manager? _instance;

  carrito_manager._();

  factory carrito_manager() => _instance ??= carrito_manager._();

  List current_list =
      []; // cada item debe ir de la siguiente manera [referencia, nombre, precio, url de imagen, cantidad]
  int total = 0;

  void agregar_producto(producto) {
    if (in_list(producto)) {
      print("ya esta");
    } else {
      List i = producto;
      i.add(1); // añade la cantidadd
      current_list.add(i);
    }
  }

  void calcular_total() {
    int i = 0;
    if (current_list.isEmpty) {
      print("no se hace nada mi rey");
    } else {
      while (i < current_list.length) {
        total += int.parse(current_list[i][1]);
      }
    }
  }

  bool in_list(item) {
    bool rpt = false;
    current_list.forEach((element) {
      if (element[0] == item[0]) {
        rpt = true;
      }
    });
    return rpt;
  }

  void eliminar_item(ref) {
    for (var element in current_list.toList()) {
      if (element[0] == ref) {
        current_list.remove(element);
        break; // Termina el bucle cuando se cumple la condición
      }
    }
  }
}

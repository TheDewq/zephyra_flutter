import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zephyra_flutter/ui/views/carrito_items/carrito_item.dart';

class carrito_manager {
  static carrito_manager? _instance;

  carrito_manager._();

  factory carrito_manager() => _instance ??= carrito_manager._();

  List current_list =
      []; // cada item debe ir de la siguiente manera [referencia, nombre, precio, url de imagen, cantidad]
  List current_list_productos =
      []; //[referencia, nombre, precio, url de imagen]
  int total = 0;
  String raw_rpt_db = "";
  late List<dynamic> lista;
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

  void set_db_rpt(rpt) {
    raw_rpt_db = rpt;
    lista = jsonDecode(raw_rpt_db);
    for (int i = 0; i < lista.length; i++) {
      Map<String, dynamic> item = lista[i];
      var img = item["img"]
          .toString()
          .substring(1, item["img"].toString().length - 1);
      current_list_productos.add([
        item["id"],
        item["nombre"],
        item["precio"],
        "https://solar-blasts.000webhostapp.com/img/" + img,
        "1"
      ]);
    }
  }
}

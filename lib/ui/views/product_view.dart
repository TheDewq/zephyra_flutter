import 'package:flutter/material.dart';

class product_view extends StatefulWidget {
  const product_view({super.key});

  @override
  State<product_view> createState() => _product_viewState();
}

class _product_viewState extends State<product_view> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("productos"));
  }
}

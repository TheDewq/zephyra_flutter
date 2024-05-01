import 'dart:ffi';

import 'package:flutter/material.dart';

Widget radius_corners(widget,
    {dynamic width = double.infinity, required double height}) {
  return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: widget);
}

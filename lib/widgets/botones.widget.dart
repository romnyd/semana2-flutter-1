import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget pintarBoton(
    {required Widget widget, required dynamic method, int flex = 1}) {
  return Expanded(
    flex: flex,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        child: ElevatedButton(
          onPressed: method,
          child: widget,
        ),
      ),
    ),
  );
}

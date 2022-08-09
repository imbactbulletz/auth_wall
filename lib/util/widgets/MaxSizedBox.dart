import 'package:flutter/material.dart';

class MaxSizedBox extends SizedBox {
  const MaxSizedBox({Key? key, required Widget child}) : super(
      key: key,
      child: child,
      height: double.infinity,
      width: double.infinity
  );
}
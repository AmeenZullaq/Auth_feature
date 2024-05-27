import 'package:flutter/material.dart';

Future<dynamic> showingDialog(BuildContext context, {required Widget widget}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return widget;
    },
  );
}

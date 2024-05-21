import 'package:flutter/material.dart';

Future<dynamic> showingDialog(BuildContext context, {required Widget dialog}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return dialog;
    },
  );
}

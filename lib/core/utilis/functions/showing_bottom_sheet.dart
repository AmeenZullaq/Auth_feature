import 'package:flutter/material.dart';

PersistentBottomSheetController showingBottomSheet(
  BuildContext context, {
  required Widget widget,
}) {
  return showBottomSheet(
    context: context,
    builder: (context) {
      return widget;
    },
  );
}

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class CustomToast {
  static void show(
      BuildContext context, {
        required String text,
        ToastificationType type = ToastificationType.success,
      }) {
    Widget icon({required ToastificationType type}) {
      switch (type) {
        case ToastificationType.success:
          return Icon(
            Icons.check_box,
            color: Colors.green,
          );
        case ToastificationType.error:
          return Icon(
            Icons.error_outline,
            color: Colors.red,
          );
        case ToastificationType.info:
          return Icon(
            Icons.info,
            color: Colors.blue,
          );
        default:
          return Icon(
            Icons.info,
            color: Colors.blue,
          );
      }
    }

    toastification.show(
      context: context,
      type: type,
      autoCloseDuration: Duration(
        seconds: 4,
      ),
      icon: icon(type: type),
      title: Text(
        text,
      ),
    );
  }
}

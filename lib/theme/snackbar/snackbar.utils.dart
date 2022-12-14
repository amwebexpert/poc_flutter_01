import 'package:flutter/material.dart';

import 'snackbar.model.dart';
import 'snackbar.widget.dart';

void showAppSnackbar({
  required BuildContext context,
  required String message,
  required SnackbarType type,
  int milliseconds = 2000,
  SnackBarAction? action,
}) {
  final duration = Duration(milliseconds: milliseconds);
  final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  messenger.showSnackBar(SnackBar(content: SnackbarWidget(message: message, type: type), shape: shape, duration: duration, action: action));
}

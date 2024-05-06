import 'package:fashion_ecom_app/localization/trans.dart';
import 'package:flutter/material.dart';

String trans(String text) {
  return Trans.greeting(text);
}

dialogHelper(
  BuildContext context, {
  String title = "Message",
  String content = "Content",
  VoidCallback? onTap,
  String leftText = 'cancel',
  String rightText = 'ok',
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(trans(leftText)),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(trans(rightText)),
          ),
        ],
      );
    },
  );
}

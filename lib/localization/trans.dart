import 'package:fashion_ecom_app/localization/locals.dart';
import 'package:flutter/material.dart';

class Trans {
  static late Locals locals;

  static void init(BuildContext context) {
    locals = Locals.of(context);
  }

  static String greeting(String key) {
    return locals.greeting(key);
  }
}

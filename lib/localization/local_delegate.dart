import 'package:fashion_ecom_app/localization/locals.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocalsDelegate extends LocalizationsDelegate<Locals> {
  @override
  bool isSupported(Locale locale) {
    return Locals.languages().contains(locale.languageCode);
  }

  @override
  Future<Locals> load(Locale locale) {
    return SynchronousFuture<Locals>(Locals(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<Locals> old) => false;
}

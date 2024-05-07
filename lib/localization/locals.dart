import 'package:flutter/material.dart';

class Locals {
  final Locale locals;

  Locals(this.locals);

  static Locals of(BuildContext context) {
    return Localizations.of(context, Locals);
  }

  static List<String> languages() {
    return localizedValue.keys.toList();
  }

  String greeting(String key) {
    try {
      if (localizedValue[locals.languageCode]![key] == null) {
        return key;
      }

      return localizedValue[locals.languageCode]![key]!;
    } on Exception {
      return key;
    }
  }

  static const localizedValue = <String, Map<String, String>>{
    'en': {
      'home': 'Home',
      'menu': "Menu",
      "profile": "Profile",
      'women': 'Women',
      'man': 'Man',
      'kids': 'Kids',
      'my_account': 'My Account',
      'edit_profile': 'Edit Profile',
      'address_book': 'Address Book',
      'change_password': 'Change password',
      'my_order': 'My Orders',
      'my_wishlists': 'My Wishlists',
      'my_shop': 'My shop',
      'other': 'Other',
      'language': 'Language',
      'logout': 'Logout',
      'account_deletion': 'Account Deletion',
    },
    'km': {
      'english': 'អង់គ្លេស',
      'khmer': 'ខ្មែរ',
    }
  };
}

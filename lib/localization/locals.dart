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
      'first_name': 'First name',
      'last_name': 'Last name',
      'email': 'Email',
      'phone_no': 'Phone number',
      'address': 'Address',
      'save': 'Save',
      'update': 'Update',
      'delete': 'Delete',
      'camera': 'Camera',
      'albums': 'Albums',
      'forgot_password': 'Forgot password',
      'continue': 'Continue',
      'plz_enter_phone': "Please enter your phone number for change password.",
      'your_profile_delete':
          'Your profile, photo , reviews, orders , wishlists ,will be permanently deleted. Ater the deletion in processed, everyting in your account(excluding your order) will be deleted forever and may not be recovered.',
      'deactivating': 'Deactivating your account is temporary.',
      'delete_my_account': 'Delete my account',
      'khmer': 'Khmer',
      'english': 'English',
      'you_want_logout': 'Do you want to logout account?',
      'ok': 'Ok',
      'cancel': 'Cancel',
    },
    'km': {
      'english': 'អង់គ្លេស',
      'khmer': 'ខ្មែរ',
    }
  };
}

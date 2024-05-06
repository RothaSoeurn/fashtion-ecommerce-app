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
      'user_name': 'User name',
      'password': 'Password',
      'login': 'Login',
      'sign_in': 'Sign in',
      'forget_password': 'Forget password',
      'change_password': 'Change password',
      'has_account': 'I has account',
      'do_sign_up': 'Do you want to sign up account with phone number ?',
      'phone_number': 'Phone number',
      'input_phone': 'Please enter your phone number.',
      'continue': 'Continue',
      'input_otp': 'Please enter otp code.',
      'verify_otp': 'Verify OTP',
      'we_send_to': 'We send code OTP to',
      'verify': 'Verify',
      'resend_code': 'Resend code',
      'home': 'Home',
      'category': 'Category',
      'cart': 'Cart',
      'profile': 'Profile',
      'view_all': 'View all',
      'search': 'Search',
      'top_categories': 'Shop Our Top Categories',
      'top_brands': 'Shop Our Top Brands',
      'popular': 'Popular',
      'recommend': 'Recommend',
      'new_product': 'New products',
      'buy_again': 'Buy again',
      'my_wishlist': 'My wishlists',
      'add_to_cart': 'Add to cart',
      'contact_us': 'Contact us',
      'hello': 'Hello',
      'my_account': 'My account',
      'edit_profile': 'Edit profile',
      'my_orders': 'My orders',
      'help': 'Help',
      'order_tracking': 'Order tracking',
      'settings': 'Settings',
      'language': 'Language',
      'theme': 'Theme',
      'logout': 'Logout',
      'do_you_want_logout': 'Do you want to log out',
      'cancel': 'Cancel',
      'ok': 'OK',
      'english': 'English',
      'khmer': 'Khmer',
      'delivery_address': 'Delivery address',
      'add_new_address': 'Add new address',
      'summary': 'Summary',
      'payment_method': 'Payment method',
      'cash_on_delivery': 'Cash on delivery',
      'do_delete_item': 'Do you want to delete item ?',
      'save': 'Save',
      'update': 'Update',
      'delete': 'Delete',
      'order_detail': 'Order detail',
      'total_amount': 'Total amount',
      'price': 'Price',
      'color': 'Color',
      'size': 'Size',
      'quantity': 'Quantity',
      'how_to_help_u': 'How can we help you?',
      'submit': 'Submit',
      'message': 'Message',
      'subject': 'Subject',
      'email': 'Email',
      'your_name': 'Your name',
      'colors': 'Colors',
      'sizes': 'Sizes',
      'rating_review': 'Ratings and reviews',
      'related_items': 'Related items',
      'filter': 'Filter',
      'sort': 'Sort',
      'min_price': 'Minimun',
      'max_price': 'Maximun',
      'price_range': 'Price range',
      'new_items': 'New items',
      'a-z': 'A-Z',
      'hight_price': 'Hight price',
      'low_price': 'Low price',
      'customer_reviews': 'Customer reviews',
      '5_star': '5 star',
      '4_star': '4 star',
      '3_star': '3 star',
      '2_star': '2 star',
      '1_star': '1 star',
      'first_name': 'First name',
      'last_name': 'Last name',
      'address': 'Address',
      'order_summary': 'Order infomation',
      'sub_total': 'SubTotal',
      'delivery_fee': 'Delivery fee',
      'discount': 'Discount',
      'total': 'Total',
      'all': 'All',
      'order': 'Order',
      'processing': 'Processing',
      'delivery': 'Delivery',
      'completed': 'Completed',
      'notification': 'Notification',
      'order_date': 'Date time',
      'checkout': 'Check out',
    },
    'km': {
      'english': 'អង់គ្លេស',
      'khmer': 'ខ្មែរ',
    }
  };
}

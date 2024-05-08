import 'package:fashion_ecom_app/presentation/screens/auth/change_password_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/edit_profile/edit_profile_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/item_filter/item_filter_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  // static get end => Offset.zero;
  // static get begin => const Offset(0, -1);
  // static get curve => Curves.ease;

  // 1,0 r -> left
  // -1,0 l -> right
  // 0,1 b -> top
  // 0,-1 t->bottom

  static SlideTransition _st(animation, child) {
    final tween = Tween(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    );
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.ease,
    );
    return SlideTransition(
      position: tween.animate(curvedAnimation),
      child: child,
    );
  }

  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        // return MaterialPageRoute(builder: (_) => const LoginScreen());
        return MaterialPageRoute(builder: (_) => const MainScreen());

      case ItemFilterScreen.routeName:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const ItemFilterScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return _st(animation, child);
          },
        );

      case EditProfileScreen.routeName:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const EditProfileScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return _st(animation, child);
          },
        );

      case ChangePasswordScreen.routeName:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const ChangePasswordScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return _st(animation, child);
          },
        );
      default:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      // return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}

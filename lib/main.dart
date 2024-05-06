import 'package:fashion_ecom_app/app_theme.dart';
import 'package:fashion_ecom_app/bloc/cart/cart_bloc.dart';
import 'package:fashion_ecom_app/bloc/setting/setting_bloc.dart';
import 'package:fashion_ecom_app/constants/globle_key.dart';
import 'package:fashion_ecom_app/localization/local_delegate.dart';
import 'package:fashion_ecom_app/navigations/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const FashtionApp());
}

class FashtionApp extends StatefulWidget {
  const FashtionApp({super.key});

  @override
  State<FashtionApp> createState() => _FashtionAppState();
}

class _FashtionAppState extends State<FashtionApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingBloc>(create: (context) => SettingBloc()),
        BlocProvider<CartBloc>(create: (context) => CartBloc()),
      ],
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          return MaterialApp(
            theme: AppThene.lightMode,
            localizationsDelegates: [
              LocalsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            navigatorKey: NavKeys.main,
            onGenerateRoute: AppNavigator.appRoute,
          );
        },
      ),
    );
  }
}

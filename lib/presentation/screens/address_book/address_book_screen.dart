import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class AddressBookScreen extends StatefulWidget {
  static const String routeName = "/address-book";
  const AddressBookScreen({super.key});

  @override
  State<AddressBookScreen> createState() => _AddressBookScreenState();
}

class _AddressBookScreenState extends State<AddressBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        isBack: true,
        closeActions: true,
        title: trans('address_book'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

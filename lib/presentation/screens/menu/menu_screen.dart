import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/screens/menu/components/kids_list.dart';
import 'package:fashion_ecom_app/presentation/screens/menu/components/man_list.dart';
import 'package:fashion_ecom_app/presentation/screens/menu/components/women_list.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  final List<Widget> _tabs = [
    Tab(text: trans('women').toUpperCase()),
    Tab(text: trans('man').toUpperCase()),
    Tab(text: trans('kids').toUpperCase()),
  ];
  final List<Widget> _tabViews = const [
    WomenLists(),
    ManLists(),
    KidsLists(),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: _tabs,
          controller: _tabController,
          indicatorColor: primayColor,
          labelColor: appBlack,
          labelStyle: TextStyle(
            fontSize: scaleFontSize(20),
            fontFamily: 'tenorSan',
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _tabViews,
          ),
        ),
      ],
    );
  }
}

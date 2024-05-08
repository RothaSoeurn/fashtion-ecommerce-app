import 'package:fashion_ecom_app/bloc/setting/setting_bloc.dart';
import 'package:fashion_ecom_app/bloc/setting/setting_event.dart';
import 'package:fashion_ecom_app/bloc/setting/setting_state.dart';
import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/localization/trans.dart';
import 'package:fashion_ecom_app/presentation/screens/home/home_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/menu/menu_screen.dart';
import 'package:fashion_ecom_app/presentation/screens/profile/profile_screen.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController(initialPage: 0);
  final List<Widget> pages = const [
    HomeScreen(),
    MenuScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Trans.init(context);
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppbarWidget(),
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: pages,
          ),
          bottomNavigationBar: _buildFotter(state),
        );
      },
    );
    //adddd
  }

  BottomNavigationBar _buildFotter(SettingState state) {
    return BottomNavigationBar(
        selectedItemColor: primayColor,
        currentIndex: state.currentPageIndex,
        onTap: (value) {
          context.read<SettingBloc>().add(SetCurrentPageIndex(index: value));
          _pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              homeSvg,
              width: scaleFontSize(25),
            ),
            label: trans('home'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              menuSvg,
              width: scaleFontSize(25),
            ),
            label: trans('menu'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              profileSvg,
              width: scaleFontSize(25),
            ),
            label: trans('profile'),
          ),
        ]);
  }
}

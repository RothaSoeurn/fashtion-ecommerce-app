import 'package:fashion_ecom_app/bloc/item_filter/item_filter_bloc.dart';
import 'package:fashion_ecom_app/bloc/item_filter/item_filter_event.dart';
import 'package:fashion_ecom_app/bloc/item_filter/item_filter_state.dart';
import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/constant.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/helper/sliver_deleget.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/product_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ItemFilterScreen extends StatefulWidget {
  static const String routeName = "/item-filter";
  const ItemFilterScreen({super.key});

  @override
  State<ItemFilterScreen> createState() => _ItemFilterScreenState();
}

class _ItemFilterScreenState extends State<ItemFilterScreen> {
  List<String> categories = ['Women', 'Man', 'Kids'];
  List<String> listIcons = [gridSvg, filterSvg];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(
        isBack: true,
      ),
      body: BlocBuilder<ItemFilterBloc, ItemFilterState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: scaleFontSize(appSpace),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '4500 Apparel',
                          style: TextStyle(
                            fontSize: scaleFontSize(16),
                          ),
                        ),
                      ),
                      Row(
                        children: listIcons.asMap().entries.map((entry) {
                          int index = entry.key;
                          String icon = entry.value;

                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: scaleFontSize(3),
                            ),
                            decoration: const BoxDecoration(
                              color: inputBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                context.read<ItemFilterBloc>().add(
                                      SelectIconFilterProduct(index: index),
                                    );
                              },
                              icon: SvgPicture.asset(icon),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: MyHeaderDelegate(
                  height: 60,
                  child: Container(
                    color: appWhite,
                    height: scaleFontSize(60),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(
                            scaleFontSize(5),
                          ),
                          child: ChoiceChip(
                            checkmarkColor: appWhite,
                            label: Text(trans(categories[index].toLowerCase())),
                            selected: index == state.selectedChipIndex,
                            selectedColor: secondaryColor,
                            onSelected: (isSelected) {
                              context.read<ItemFilterBloc>().add(
                                    SetSelectedChipIndex(
                                      index: isSelected
                                          ? index
                                          : state.selectedChipIndex,
                                    ),
                                  );
                            },
                            padding: EdgeInsets.symmetric(
                              horizontal: scaleFontSize(appSpace),
                            ),
                            labelStyle: TextStyle(
                              color: state.selectedChipIndex == index
                                  ? appWhite
                                  : appBlack,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ProductBuilder(
                  displayType: state.selectedIconIndex == 0
                      ? DisplayType.vertical
                      : DisplayType.horinzor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

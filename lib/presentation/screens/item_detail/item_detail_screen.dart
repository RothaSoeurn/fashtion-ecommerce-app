import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/appbar_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/footer_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:fashion_ecom_app/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemDetailScreen extends StatefulWidget {
  static const String routeName = '/item-detail';
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  List<String> listImgs = [
    'https://hips.hearstapps.com/hmg-prod/images/hailey-bieber-is-seen-in-brooklyn-on-june-15-2022-in-new-news-photo-1657725290.jpg?crop=1.00xw:0.668xh;0,0.0359xh&resize=640:*',
    'https://media.4rgos.it/i/Argos/0324-M027-TU-trending-tailoring?w=auto&qlt=50&fmt=auto&noiser=0&fmt.jpeg.interlaced=true&fmt.jp2.qlt=40&',
    'https://cdn.create.vista.com/api/media/small/677652484/stock-photo-alluring-fashion-model-pastel-beige-suit-posing-chair-looking-camera',
    'https://wwd.com/wp-content/uploads/2022/10/Look-3_0089_HR.jpg?w=390&h=550&crop=1',
  ];

  List colors = [
    Colors.blue,
    Colors.amberAccent,
    Colors.brown,
  ];
  List<String> sizes = ['S', 'M', 'L', 'XL'];
  final _carouselController = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(
        isBack: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(scaleFontSize(appSpace)),
        children: [
          CarouselSlider.builder(
            carouselController: _carouselController,
            itemCount: listImgs.length,
            itemBuilder: (context, index, realIndex) {
              return ImageNetWorkWidget(
                imageUrl: listImgs[index],
                width: double.infinity,
                height: scaleFontSize(500),
                isNotRounding: true,
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              height: scaleFontSize(500),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayInterval: const Duration(seconds: 10),
              enlargeFactor: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: scaleFontSize(15)),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: listImgs.length,
              textDirection: TextDirection.rtl,
              effect: WormEffect(
                type: WormType.thinUnderground,
                dotWidth: scaleFontSize(8),
                dotHeight: scaleFontSize(8),
                dotColor: backgroundColor,
                activeDotColor: secondaryColor,
              ),
            ),
          ),
          SizedBox(height: scaleFontSize(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MOHAN',
                style: TextStyle(
                  fontSize: scaleFontSize(16),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '\$120.00',
                style: TextStyle(
                  fontSize: scaleFontSize(20),
                  fontWeight: FontWeight.w600,
                  color: primayColor,
                ),
              ),
            ],
          ),
          Text(
            'Recycle Boucle Knit Cardigan Pink',
            style: TextStyle(
              fontSize: scaleFontSize(14),
              color: appGrey,
            ),
          ),
          SizedBox(height: scaleFontSize(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trans('colors'),
                style: TextStyle(
                  fontSize: scaleFontSize(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: scaleFontSize(15)),
              SizedBox(
                height: scaleFontSize(35),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: colors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(scaleFontSize(appSpace)),
                      margin: EdgeInsets.symmetric(
                        horizontal: scaleFontSize(5),
                      ),
                      width: scaleFontSize(30),
                      height: scaleFontSize(30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors[index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          SizedBox(height: scaleFontSize(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trans('sizes'),
                style: TextStyle(
                  fontSize: scaleFontSize(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: scaleFontSize(15)),
              SizedBox(
                height: scaleFontSize(35),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: sizes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // padding: EdgeInsets.all(scaleFontSize(appSpace)),
                      margin: EdgeInsets.symmetric(
                        horizontal: scaleFontSize(5),
                      ),
                      width: scaleFontSize(30),
                      height: scaleFontSize(30),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: inputBackgroundColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          // textAlign: TextAlign.center,
                          sizes[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: scaleFontSize(14),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          SizedBox(height: scaleFontSize(20)),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  addSvg,
                  width: scaleFontSize(25),
                  colorFilter: const ColorFilter.mode(
                    appWhite,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: scaleFontSize(appSpace)),
                Text(
                  'Add to basket',
                  style: TextStyle(
                    fontSize: scaleFontSize(20),
                    fontWeight: FontWeight.w600,
                    color: appWhite,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: scaleFontSize(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MATERIALS',
                style: TextStyle(
                  fontSize: scaleFontSize(16),
                ),
              ),
              Text(
                'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products. ',
                style: TextStyle(
                  fontSize: scaleFontSize(12),
                ),
              )
            ],
          ),
          SizedBox(height: scaleFontSize(20)),
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            title: const Text('Return Policy'),
            children: [
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(
                  fontSize: scaleFontSize(12),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: scaleFontSize(20)),
          Text(
            'You may also like'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: scaleFontSize(18),
              fontWeight: FontWeight.w600,
              letterSpacing: scaleFontSize(5),
              fontFamily: 'tenorSan',
            ),
          ),
          SizedBox(height: scaleFontSize(appSpace)),
          Image.asset(deviderImg),
          SizedBox(height: scaleFontSize(appSpace)),
          SizedBox(
            height: scaleFontSize(280),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 16,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ProductCardWidget();
              },
            ),
          ),
          SizedBox(height: scaleFontSize(20)),
          Text(
            'Similer items'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: scaleFontSize(18),
              fontWeight: FontWeight.w600,
              letterSpacing: scaleFontSize(5),
              fontFamily: 'tenorSan',
            ),
          ),
          SizedBox(height: scaleFontSize(appSpace)),
          Image.asset(deviderImg),
          SizedBox(height: scaleFontSize(appSpace)),
          SizedBox(
            height: scaleFontSize(280),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 16,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ProductCardWidget();
              },
            ),
          ),
          SizedBox(height: scaleFontSize(20)),
          const FooterWidget(),
        ],
      ),
    );
  }
}

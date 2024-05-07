import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/image_assets.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/helper/helper.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images = [
    'https://lapolo-backend-static-file-rest-api.s3.amazonaws.com/media/None/100-years-of-fashion-cover-lapolo.jpg',
    'https://www.thetimes.co.uk/imageserver/image//methode/times/prod/web/bin/2f2adf9a-ce63-11e9-bfe0-b5ac4ce6ca95.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/anna-rosa-vitiello-wears-white-and-orange-sunglasses-gold-news-photo-1672741379.jpg?resize=980:*'
  ];
  final _carouselController = CarouselController();
  int _currentIndex = 0;

  final List brands = [
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190851/Louis-Vuitton-1.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190912/Fendi.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190907/Chanel.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190917/Burberry.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190929/Givenchy.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190936/Balenciaga.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190941/Prada.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190946/Dior.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10191016/Versace.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10191006/Hermes.png',
    'https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10191001/Dolce-and-Gabanna.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildSlideShow(),
        Image.asset(deviderImg),
        Container(
          color: appWhite,
          child: MasonryGridView.count(
            padding: EdgeInsets.all(scaleFontSize(appSpace)),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: brands.length,
            crossAxisCount: 3,
            itemBuilder: (context, index) {
              return ImageNetWorkWidget(
                isNotRounding: true,
                fit: BoxFit.contain,
                width: double.infinity,
                height: scaleFontSize(100),
                imageUrl: brands[index],
              );
            },
          ),
        ),
        Image.asset(deviderImg),
        MasonryGridView.count(
          padding: EdgeInsets.all(scaleFontSize(appSpace)),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          crossAxisCount: 2,
          crossAxisSpacing: scaleFontSize(appSpace),
          mainAxisSpacing: scaleFontSize(appSpace),
          itemBuilder: (context, index) {
            return Column(
              children: [
                ImageNetWorkWidget(
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://img.freepik.com/free-photo/black-woman-trendy-grey-leather-jacket-posing-beige-background-studio-winter-autumn-fashion-look_273443-141.jpg',
                  width: double.infinity,
                  height: scaleFontSize(200),
                  isNotRounding: true,
                ),
                SizedBox(height: scaleFontSize(5)),
                Text(
                  '21WN reversible angora cardigan',
                  style: TextStyle(
                    fontSize: scaleFontSize(16),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '\$120',
                  style: TextStyle(
                      fontSize: scaleFontSize(24),
                      color: Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
        SizedBox(height: scaleFontSize(appSpace)),
        Text(
          trans('Follow Us').toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(20),
            letterSpacing: scaleFontSize(7),
          ),
        ),
        SizedBox(height: scaleFontSize(15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(igSvg),
            SvgPicture.asset(twSvg),
            SvgPicture.asset(ytSvg),
          ],
        ),
        SizedBox(height: scaleFontSize(15)),
        Image.asset(deviderImg),
        Text(
          'support@openui.design',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(16),
          ),
        ),
        SizedBox(height: scaleFontSize(5)),
        Text(
          '+60 825 876',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(16),
          ),
        ),
        SizedBox(height: scaleFontSize(5)),
        Text(
          '08:00 - 22:00 - Everyday',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaleFontSize(16),
          ),
        ),
        Image.asset(deviderImg),
        SizedBox(height: scaleFontSize(16)),
        Container(
          color: footerColor,
          padding: EdgeInsets.all(scaleFontSize(16)),
          child: Text(
            'Copyright© Company name',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: scaleFontSize(12),
            ),
          ),
        )
      ],
    );
  }

  Stack _buildSlideShow() {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _carouselController,
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return ImageNetWorkWidget(
              imageUrl: images[index],
              width: double.infinity,
              height: scaleFontSize(300),
              isNotRounding: true,
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            height: scaleFontSize(300),
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
        Positioned(
          bottom: scaleFontSize(appSpace),
          right: 0,
          left: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: images.length,
              textDirection: TextDirection.rtl,
              effect: WormEffect(
                type: WormType.thinUnderground,
                dotWidth: scaleFontSize(14),
                dotHeight: scaleFontSize(14),
                dotColor: backgroundColor,
                activeDotColor: secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:fashion_ecom_app/constants/style.dart';
import 'package:fashion_ecom_app/presentation/widgets/image_network_widget.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
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
        ),
      ],
    );
  }
}

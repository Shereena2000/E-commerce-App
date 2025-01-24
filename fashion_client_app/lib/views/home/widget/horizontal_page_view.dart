import 'package:fashion_client_app/model/promo_model.dart';
import 'package:fashion_client_app/views/home/widget/background_image.dart';
import 'package:fashion_client_app/views/home/widget/logo.dart';
import 'package:fashion_client_app/views/home/widget/sub_title.dart';
import 'package:fashion_client_app/views/home/widget/title.dart';
import 'package:flutter/material.dart';

class HorizontalPageView extends StatelessWidget {
  final PromoModel promo;
  final PageController horizontalController;

  const HorizontalPageView({
    required this.promo,
    required this.horizontalController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      controller: horizontalController,
      itemCount: promo.imageUrls.length,
      itemBuilder: (context, horizontalIndex) {
        return Stack(
          children: [
            BackgroundImage(imageUrl: promo.imageUrls[horizontalIndex]),
            Logo(),
            CustomTitle(
              title: promo.titles[horizontalIndex],
              bottom: 180,
              right: 70,
            ),
            Subtitle(
              subtitle: promo.subTitles[horizontalIndex],
              bottom: 150,
              right: 100,
            ),
          ],
        );
      },
    );
  }
}


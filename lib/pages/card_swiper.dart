import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import '../widgets/sale_card.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      'assets/images/shoe_1.png',
      'assets/images/shoe_2.png',
      'assets/images/shoe_3.png',
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Card Swiper')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.20,
              width: double.infinity,
              child: Swiper(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final pic = images[index];
                  return saleCard(pic);
                },
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        size: 10,
                        activeSize: 14,
                        color: Colors.white,
                        activeColor: Colors.orange)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

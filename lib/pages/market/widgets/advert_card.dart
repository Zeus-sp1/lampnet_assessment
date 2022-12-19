import 'package:flutter/material.dart';

class AdvertCard extends StatelessWidget {
  const AdvertCard({
    Key? key,
    required this.pageController,
    required this.carouselImages,
    required ValueNotifier<int> currentPageNotifier,
  })  : _currentPageNotifier = currentPageNotifier,
        super(key: key);

  final PageController pageController;
  final List<String> carouselImages;
  final ValueNotifier<int> _currentPageNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: PageView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: pageController,
          itemCount: carouselImages.length,
          itemBuilder: (
            _,
            activeIndex,
          ) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(
                    carouselImages[activeIndex],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          onPageChanged: (index) {
            _currentPageNotifier.value = index;
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:nike_store/src/dummy/dummy_arrival.dart';
import 'package:nike_store/src/tools/custom_color.dart';
import 'package:nike_store/src/widget/carousel_card.dart';
import 'package:nike_store/src/widget/fade_in_animation.dart';
import 'package:nike_store/src/widget/side_in_animation.dart';

class AppbarCarouselWidget extends StatelessWidget {
  const AppbarCarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 300,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: FadeInAnimation(
              delay: 1,
              child: Container(
                width: size.width,
                height: 200,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 20,
                ),
                decoration: const BoxDecoration(
                  color: Color(color3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                child: SideInAnimation(
                  delay: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "NIKE",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(color1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color(color8),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: "Search",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: SizedBox(
              width: size.width,
              height: 170.0,
              child: SideInAnimation(
                delay: 2,
                child: Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Swiper(
                    itemCount: dummyArrival.length,
                    autoplay: true,
                    pagination:
                        const SwiperPagination(margin: EdgeInsets.all(10)),
                    itemBuilder: (context, index) {
                      var carouselItem = dummyArrival[index];
                      return CarouselCard(shoes: carouselItem);
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

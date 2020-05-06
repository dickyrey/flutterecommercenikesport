import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttershop/src/dummy/dummyArrival.dart';
import 'package:fluttershop/src/tools/custom_color.dart';
import 'package:fluttershop/src/widget/carousel_card.dart';
import 'package:fluttershop/src/widget/fade_in_animation.dart';
import 'package:fluttershop/src/widget/side_in_animation.dart';

class AppbarCarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
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
                padding: EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
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
                      Container(
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
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(color8),
                          ),
                          child: TextField(
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
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Swiper(
                    itemCount: dummyArrival.length,
                    autoplay: true,
                    pagination: SwiperPagination(margin: EdgeInsets.all(10)),
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

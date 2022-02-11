import 'package:flutter/material.dart';
import 'package:nike_store/src/dummy/dummy_arrival.dart';
import 'package:nike_store/src/tools/custom_color.dart';
import 'package:nike_store/src/view/shoes_detail.dart';
import 'package:nike_store/src/widget/appbar_carousel.dart';

import 'package:nike_store/src/widget/category_tab.dart';
import 'package:nike_store/src/widget/fade_in_animation.dart';
import 'package:nike_store/src/widget/shoes_card.dart';
import 'package:nike_store/src/widget/side_in_animation.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppbarCarouselWidget(),
            const SizedBox(height: 25.0),
            SideInAnimation(
              delay: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CategoryTab(
                      name: "Category",
                      color: color5,
                      icon: "assets/icons/category.svg",
                    ),
                    CategoryTab(
                      name: "Compare",
                      color: color6,
                      icon: "assets/icons/compare.svg",
                    ),
                    CategoryTab(
                      name: "Sales Event",
                      color: color7,
                      icon: "assets/icons/sales.svg",
                    ),
                    CategoryTab(
                      name: "Offers",
                      color: color8,
                      icon: "assets/icons/offers.svg",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            FadeInAnimation(
              delay: 5,
              child: Container(
                padding: const EdgeInsets.only(left: 20.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Color(color1),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15.0),
                    SideInAnimation(
                      delay: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "New Arrivals",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: const Color(color4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 260.0,
                      child: ListView.builder(
                        itemCount: dummyArrival.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var shoes = dummyArrival[index];
                          return SideInAnimation(
                            delay: 6,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ShoesDetail(shoes: shoes),
                                  ),
                                );
                              },
                              child: ShoesCard(shoes: shoes),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttershop/src/dummy/dummyArrival.dart';
import 'package:fluttershop/src/tools/custom_color.dart';
import 'package:fluttershop/src/view/shoes_detail.dart';
import 'package:fluttershop/src/widget/appbar_carousel.dart';

import 'package:fluttershop/src/widget/category_tab.dart';
import 'package:fluttershop/src/widget/fade_in_animation.dart';
import 'package:fluttershop/src/widget/shoes_card.dart';
import 'package:fluttershop/src/widget/side_in_animation.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppbarCarouselWidget(),
              SizedBox(height: 25.0),
              SideInAnimation(
                delay: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
              SizedBox(height: 25.0),
              FadeInAnimation(
                delay: 5,
                child: Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Color(color1),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 25.0),
                      SideInAnimation(
                        delay: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "New Arrivals",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              RaisedButton(
                                onPressed: () {},
                                color: Color(color4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
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
                      SizedBox(height: 20),
                      Container(
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
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

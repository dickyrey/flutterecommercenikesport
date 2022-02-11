import 'package:flutter/material.dart';
import 'package:nike_store/src/model/shoes.dart';
import 'package:nike_store/src/tools/custom_color.dart';
import 'package:nike_store/src/widget/fade_in_animation.dart';
import 'package:nike_store/src/widget/side_in_animation.dart';

class ShoesDetail extends StatelessWidget {
  final Shoes shoes;

  const ShoesDetail({Key? key, required this.shoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: 250.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: size.width,
                      height: 190.0,
                      decoration: const BoxDecoration(
                        color: Color(color4),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.0,
                    left: 8.0,
                    right: 8.0,
                    child: SideInAnimation(
                      delay: 1,
                      child: Container(
                        width: size.width,
                        height: 200.0,
                        margin: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(shoes.urlimage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            SideInAnimation(
              delay: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Rp.${shoes.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        BoxIcon(icon: Icons.favorite_border),
                        SizedBox(width: 12),
                        BoxIcon(icon: Icons.share),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            SideInAnimation(
              delay: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  shoes.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            SideInAnimation(
              delay: 3,
              child: Container(
                width: double.infinity,
                height: 100.0,
                margin: const EdgeInsets.only(left: 20.0),
                child: ListView.builder(
                  itemCount: shoes.images.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var images = shoes.images[index];
                    return Container(
                      width: 100,
                      height: 80,
                      margin: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(images),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            const SideInAnimation(
              delay: 4,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Select Size",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SideInAnimation(
              delay: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: shoes.size
                      .map(
                        (e) => Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Text(
                              e,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            const SideInAnimation(
              delay: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SideInAnimation(
              delay: 6,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 12.0),
                child: Text(
                  shoes.description,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FadeInAnimation(
        delay: 2,
        child: Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ButtonBottom(
                  title: "Add To Cart", color: color1, textColor: color9),
              ButtonBottom(title: "Buy Now", color: color4, textColor: color1),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonBottom extends StatelessWidget {
  final String title;
  final int color;
  final int textColor;

  const ButtonBottom({
    Key? key,
    required this.title,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50.0,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(textColor),
          ),
        ),
      ),
    );
  }
}

class BoxIcon extends StatelessWidget {
  final IconData icon;

  const BoxIcon({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Icon(icon),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttershop/src/model/shoes.dart';
import 'package:fluttershop/src/tools/custom_color.dart';

class CarouselCard extends StatelessWidget {
  final Shoes shoes;
  CarouselCard({this.shoes});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 12, 12, 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(shoes.urlimage),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Introducing"),
                  Text(
                    shoes.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: RaisedButton(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Color(color1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

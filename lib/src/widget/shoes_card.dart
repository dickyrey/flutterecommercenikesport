import 'package:flutter/material.dart';
import 'package:fluttershop/src/model/shoes.dart';
import 'package:fluttershop/src/tools/custom_color.dart';

class ShoesCard extends StatelessWidget {
  final Shoes shoes;
  ShoesCard({this.shoes});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(right: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 8),
        child: Column(
          children: [
            Container(
              width: 140.0,
              height: 150.0,
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(
                top: 12,
                right: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(
                    shoes.urlimage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Icon(
                Icons.favorite_border,
                color: Color(color2),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: SizedBox(
                width: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      shoes.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    Text(
                      shoes.category,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "Rp.${shoes.price}",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nike_store/src/model/shoes.dart';
import 'package:nike_store/src/tools/custom_color.dart';

class ShoesCard extends StatelessWidget {
  final Shoes shoes;

  const ShoesCard({Key? key, required this.shoes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(right: 10.0),
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
              padding: const EdgeInsets.only(
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
              child: const Icon(
                Icons.favorite_border,
                color:  Color(color2),
              ),
            ),
            const SizedBox(height: 12),
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
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    ),
                    Text(
                      shoes.category,
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "Rp.${shoes.price}",
                      style: const TextStyle(
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

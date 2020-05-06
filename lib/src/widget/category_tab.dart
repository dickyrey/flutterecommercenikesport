import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTab extends StatelessWidget {
  final String name;
  final String icon;
  final int color;
  CategoryTab({this.name, this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(color),
            ),
            child: Center(
              child: SvgPicture.asset(
                icon,
                width: 20,
                height: 20,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

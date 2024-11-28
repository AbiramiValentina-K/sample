import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HomeScreenContainer extends StatelessWidget {
  const HomeScreenContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(icon, size: 32, color: color),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: TextStyle(
                  color: black,
                  fontSize: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project_zand_card/contents.dart';

class Item extends StatelessWidget {
  Item(
      {Key? key,
      this.icon,
      this.iconColor,
      this.cardColor,
      this.text,
      required this.title})
      : super(key: key);

  IconData? icon;
  String title;
  String? text;
  Color? iconColor;
  Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: cardColor ?? Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon ?? Icons.ac_unit,
                color: iconColor??Colors.white,
                size: 26.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kStyleTitleText,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    text ?? "بدون متن",
                    style: kStyleText,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

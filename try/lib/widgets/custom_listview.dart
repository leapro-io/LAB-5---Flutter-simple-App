import 'package:flutter/material.dart';

import '../models/listtile_model.dart';

class CustomLV extends StatelessWidget {
  final int i;
  const CustomLV({
    required this.i,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      shadowColor: Colors.black,
      elevation: 2,
      child: Container(
        width: width * 0.9,
        decoration: const BoxDecoration(
          color: Color(0xff0F4F8FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: ListTile(
          title: Text(
            items[i].title,
            style: const TextStyle(
              color: Color(0xff002856),
              fontFamily: 'Calibri',
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            items[i].subtitle,
            style: const TextStyle(
              color: Color(0xff002856),
              fontFamily: 'Calibri',
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Column(
            children: [
              Image.asset(items[i].trailing),
              Text(
                items[i].status,
                style: const TextStyle(
                  color: Color(0xff002856),
                  fontFamily: 'Calibri',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<ListTileModel> items = [
  ListTileModel(
      title: "LG - 013",
      subtitle: "SAR 20,000 - Riyad Bank",
      trailing: "assets/images/Vector1.png",
      status: "Active"),
  ListTileModel(
      title: "LG - 014",
      subtitle: "SAR 20,000 - Riyad Bank",
      trailing: "assets/images/Vector (1).png",
      status: "Rejected"),
  ListTileModel(
      title: "LG - 015",
      subtitle: "SAR 20,000 - Alrajhi Bank",
      trailing: "assets/images/Vector (2).png",
      status: "Pending"),
  ListTileModel(
      title: "LG - 015",
      subtitle: "SAR 20,000 - Alrajhi Bank",
      trailing: "assets/images/Vector (3).png",
      status: "Saved"),
  ListTileModel(
      title: "LG - 015",
      subtitle: "SAR 20,000 - Alrajhi Bank",
      trailing: "assets/images/Vector (3).png",
      status: "Saved"),
  ListTileModel(
      title: "LG - 015",
      subtitle: "SAR 20,000 - Alrajhi Bank",
      trailing: "assets/images/Vector (3).png",
      status: "Saved"),
  ListTileModel(
      title: "LG - 015",
      subtitle: "SAR 20,000 - Alrajhi Bank",
      trailing: "assets/images/Vector (3).png",
      status: "Saved"),
  ListTileModel(
      title: "LG - 015",
      subtitle: "SAR 20,000 - Alrajhi Bank",
      trailing: "assets/images/Vector (3).png",
      status: "Saved"),
];

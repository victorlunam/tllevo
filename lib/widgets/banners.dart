import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  Banners({Key? key}) : super(key: key);

  final List<String> _paths = [
    './assets/images/banner_1.png',
    './assets/images/banner_2.png',
    './assets/images/banner_3.png',
    './assets/images/banner_4.png',
    './assets/images/banner_5.png',
    './assets/images/banner_6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: _paths.length,
      itemBuilder: (BuildContext ctx, index) {
        if (index == (_paths.length - 1)) {
          return SizedBox(
            child: Image(image: AssetImage(_paths[index])),
          );
        }

        return Container(
          padding: const EdgeInsets.only(right: 10),
          child: Image(image: AssetImage(_paths[index])),
        );
      },
    );
  }
}

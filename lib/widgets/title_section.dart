import 'dart:ui';

import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            'Ver todas >',
            style: TextStyle(color: Color(0xff3483FA)),
          )
        ],
      ),
    );
  }
}

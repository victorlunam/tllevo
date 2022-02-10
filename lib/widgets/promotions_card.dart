import 'package:flutter/material.dart';

class PromotionsCard extends StatelessWidget {
  const PromotionsCard(
      {Key? key,
      required this.title,
      required this.pathImage,
      required this.colorBackground,
      required this.colorText})
      : super(key: key);

  final String title;
  final String pathImage;
  final Color colorBackground;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorBackground,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 25, color: colorText),
                  ),
                ),
                const SizedBox(height: 30),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Ver todas >',
                    style: TextStyle(color: colorText),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: colorText)),
                )
              ],
            ),
          ),
          Expanded(
            child: Image(image: AssetImage(pathImage), fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}

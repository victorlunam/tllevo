import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    const Image(
                        image: AssetImage('./assets/images/product.png')),
                    CircleAvatar(
                      backgroundColor: const Color(0xffE1E1E1),
                      child: SvgPicture.asset(
                        './assets/icons/favorite_outline.svg',
                        color: const Color(0xff888888),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                    'Refrigeradora Samsung Top Freezer Con Twin Cooling lus'),
                const SizedBox(height: 5),
                const Text(
                  '\$1.740',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xff888888),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough),
                ),
                Row(
                  children: const [
                    Text(
                      '\$870',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      ' 40% dto ',
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Color(0xffDE2756)),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  'Envio Gratis',
                  style: TextStyle(color: Color(0xff4C2EAC)),
                )
              ],
            ),
          ),
        ));
  }
}

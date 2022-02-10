import 'package:flutter/material.dart';

List<Map<String, String>> categories = [
  {'path': './assets/images/category_1.png', 'name': 'Todas Categorías'},
  {'path': './assets/images/category_2.png', 'name': 'Videojuegos'},
  {'path': './assets/images/category_3.png', 'name': 'Moda'},
  {'path': './assets/images/category_4.png', 'name': 'Computación'},
  {'path': './assets/images/category_5.png', 'name': 'Audio'},
  {'path': './assets/images/category_6.png', 'name': 'Televisores'},
];

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (BuildContext ctx, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          child: Column(
            children: [
              Image(image: AssetImage(categories[index]['path'] ?? '')),
              Text(categories[index]['name'] ?? '')
            ],
          ),
        );
      },
    );
  }
}

class WrapCategories extends StatelessWidget {
  const WrapCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: categories
          .map((e) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 15),
                child: Column(
                  children: [
                    Image(image: AssetImage(e['path'] ?? '')),
                    Text(e['name'] ?? '')
                  ],
                ),
              ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tllevo/palette.dart';
import 'package:tllevo/widgets/auth_section.dart';
import 'package:tllevo/widgets/banners.dart';
import 'package:tllevo/widgets/categories.dart';
import 'package:tllevo/widgets/drawer.dart';
import 'package:tllevo/widgets/product.dart';
import 'package:tllevo/widgets/promotions_card.dart';
import 'package:tllevo/widgets/search_bar.dart';
import 'package:tllevo/widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tllevo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.primary,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> actions = [
    IconButton(
      onPressed: null,
      icon: SvgPicture.asset('./assets/icons/bell.svg'),
    ),
    IconButton(
      onPressed: null,
      icon: SvgPicture.asset('./assets/icons/favorite.svg'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('./assets/icons/brand.svg'),
        elevation: 0,
        actions: actions,
      ),
      backgroundColor: Palette.background,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                const SearchBar(),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Banners(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 180,
              child: Categories(),
            ),
            const AuthSection(),
            const TitleSection(text: 'Te mereces todo esto'),
            Wrap(
              spacing: 5,
              children: const [
                Product(),
                Product(),
                Product(),
                Product(),
              ],
            ),
            const TitleSection(text: 'Categorías'),
            const PromotionsCard(
              title: 'Grandes ofertas en artículos y accesorios deportivos',
              pathImage: './assets/images/card_1.png',
              colorBackground: Color(0xff00AE3A),
              colorText: Colors.white,
            ),
            const PromotionsCard(
              title: 'Todo en artículo y accesorios para tu cocina',
              pathImage: './assets/images/card_2.png',
              colorBackground: Colors.white,
              colorText: Color(0xff2D2D2D),
            ),
            const TitleSection(text: 'Novedades'),
            const WrapCategories(),
            const SizedBox(height: 20)
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

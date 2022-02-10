import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tllevo/palette.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 180,
      color: Palette.primary,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          hintText: 'Busca el producto que deseas',
          hintStyle: const TextStyle(color: Color(0xff707070)),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset(
              './assets/icons/search.svg',
              color: const Color(0xff707070),
            ),
          ),
        ),
      ),
    );
  }
}

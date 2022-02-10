import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tllevo/palette.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 60,
                        width: 60,
                        color: const Color(0xffE1E1E1),
                        child: SvgPicture.asset('./assets/icons/avatar.svg'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Flexible(
                      child: Text(
                        '¿Deseas acceder a los mejores descuentos?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Iniciar Sesión'),
                    style: ElevatedButton.styleFrom(
                      primary: Palette.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Inicio'),
            leading: SvgPicture.asset('./assets/icons/home.svg'),
            selected: true,
            selectedColor: Colors.white,
            selectedTileColor: Palette.primary,
          ),
          ListTile(
            title: const Text('Buscar'),
            leading: SvgPicture.asset('./assets/icons/search.svg'),
          ),
          ListTile(
            title: const Text('Mis Compras'),
            leading: SvgPicture.asset('./assets/icons/shopping.svg'),
          ),
          ListTile(
            title: const Text('Favoritos'),
            leading: SvgPicture.asset('./assets/icons/favorite_outline.svg'),
          ),
          ListTile(
            title: const Text('Descuentos'),
            leading: SvgPicture.asset('./assets/icons/discounts.svg'),
          ),
          ListTile(
            title: const Text('Historial'),
            leading: SvgPicture.asset('./assets/icons/history.svg'),
          ),
          ListTile(
            title: const Text('Mi cuenta'),
            leading: SvgPicture.asset('./assets/icons/my_account.svg'),
          ),
          const Divider(height: 2),
          ListTile(
            title: const Text('Vender'),
            leading: SvgPicture.asset('./assets/icons/sell.svg'),
          ),
          const Divider(height: 2),
          ListTile(
            title: const Text('Tiendas Oficiales'),
            leading: SvgPicture.asset('./assets/icons/official_store.svg'),
          ),
          ListTile(
            title: const Text('Categorías'),
            leading: SvgPicture.asset('./assets/icons/categories.svg'),
          ),
          const Divider(height: 2),
          ListTile(
            title: const Text('Ayuda'),
            leading: SvgPicture.asset('./assets/icons/help.svg'),
          ),
          ListTile(
            title: const Text('Acerca De'),
            leading: SvgPicture.asset('./assets/icons/tllevo.svg'),
          ),
        ],
      ),
    );
  }
}

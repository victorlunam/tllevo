import 'package:flutter/material.dart';
import 'package:tllevo/palette.dart';

class AuthSection extends StatelessWidget {
  const AuthSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                '¡Disfruta mejor la experiencia y crea tu cuenta Tllevo!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Crea tu cuenta'),
                  style: ElevatedButton.styleFrom(
                    primary: Palette.primary,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Iniciar Sesión'),
                  style: TextButton.styleFrom(
                    primary: const Color(0xff707070),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

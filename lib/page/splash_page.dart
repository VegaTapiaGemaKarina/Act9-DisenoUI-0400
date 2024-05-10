import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vega0400/core/color.dart';
import 'package:vega0400/widgets/bottom_nav.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 25),
          const Text(
            'Dulceria',
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 1.8,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            ' Sweet Candy',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1.8,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 350,
            width: 350,
            child: Image.asset('assets/images/inicio.jpeg'), //Asset1.png
          ),
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const BottomNavBar()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: pink,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'Inicia Sesion',
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Crea una Cuenta',
              style: TextStyle(
// Rosa fuerte
                fontSize: 16,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Olvidaste tu Contraseña',
              style: TextStyle(
                color: Color(0xffff198d),
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

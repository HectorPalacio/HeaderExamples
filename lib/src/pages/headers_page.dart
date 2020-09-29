import 'package:disenos_intermedio/src/widgets/headers.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: [
          HeaderCuadrado(),
          HeaderBordesRedondeados(),
          HeaderDiagonal(),
          HeaderTriangular(),
          HeaderPico(),
          HeaderCurvo(),
          HeaderWave(),
          HeaderWaveGradient(),
        ],
      ),
    );
  }
}

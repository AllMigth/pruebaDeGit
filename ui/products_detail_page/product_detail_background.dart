import 'package:flutter/material.dart';

class ProductDetailBackground extends StatelessWidget {
  final screeHeight, screenWidth;

  const ProductDetailBackground({Key key, this.screeHeight, this.screenWidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          left: screenWidth * 0.27,
          top: -screenWidth * 0.4,
          child: Container(
            height: screenWidth * 1.2,
            width: screenWidth * 1.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF0000FF)
            ),
          ),
        ),
        Positioned(
          left: 20,
            right: 20,
            top: screeHeight * 0.17,
            child: Image.asset(
                "assets/images/softLogo.png",
              color: Color(0xFFECECEC).withOpacity(0.5),
            ),
        ),
      ]
    );
  }
}

import 'package:flutter/material.dart';
import 'package:puertoquito/models/product.dart';
import 'package:puertoquito/widgets/red_button.dart';

import 'left_image_product_item_widget.dart';
import 'right_image_product_item_widget.dart';
import 'top_bar.dart';
import 'two_products_item_widget.dart';

class ProductsListingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/images/softyon.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset("assets/icons/menu.png"),
          ),
        ],
      ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //TopBar(), //HERE WE CALL THE CLASS, put the widgets like this. THAT'S AWESOME,
          RightImageProductItemWidget(
              screenHeight: screenHeight,
              product: pixel,
          ),
          LeftImageProductItemWidget(
            screenHeight: screenHeight,
            product: stadia,
          ),
          TwoProductsItemWidget(
            screenHeight: screenHeight,
            product1: pixelStand,
            product2: dayDreamview,
          ),
          RightImageProductItemWidget(
            screenHeight: screenHeight,
            product: pixel,
          ),
          TwoProductsItemWidget(
            screenHeight: screenHeight,
            product1: pixelStand,
            product2: dayDreamview,
          ),
          /*RedButton(
              buttonText: "View all"
          ),*/
        ],
      ),
    ),
    );
  }
}
/*
* IN THIS PAGE WE LIST THE PRODUCTS OF THE MAIN PAGE*/
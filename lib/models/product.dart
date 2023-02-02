import 'package:ecommerce_app/themes/colors.dart';
import 'package:ecommerce_app/widgets/color_chip_widget.dart';
import 'package:flutter/material.dart';

class Product {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productStock;
  final List<ColorChipWidget> colors;

  Product(this.productName, this.productStock, this.colors, this.productImage,
      this.productPrice);
}

final productList = [
  Product(
    'Cottages Sofa',
    '32',
    [
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        color: Colors.white,
        borderColor: Colors.grey,
        borderWidth: 1,
      ),
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: greenColor,
        borderWidth: 0,
      ),
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: orangeColor,
        borderWidth: 0,
      ),
    ],
    'https://picsum.photos/206',
    '24',
  ),
  Product(
    'Makumbe Set',
    '21',
    [
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: darkGreyColor,
        borderWidth: 0,
      ),
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: lightGreenColor,
        borderWidth: 0,
      ),
    ],
    'https://picsum.photos/205',
    '120',
  ),
  Product(
      'Rumba Chair Set',
      '10',
      [
        ColorChipWidget(
          borderRadius: BorderRadius.circular(4.0),
          chipHeight: 20.0,
          chipWidth: 20.0,
          borderColor: Colors.transparent,
          color: darkBrownColor,
          borderWidth: 0,
        ),
        ColorChipWidget(
          borderRadius: BorderRadius.circular(4.0),
          chipHeight: 20.0,
          chipWidth: 20.0,
          borderColor: Colors.transparent,
          color: lightCreamColor,
          borderWidth: 0,
        ),
      ],
      'https://picsum.photos/204',
      '310'),
  Product(
    'Vintage Desk',
    '5',
    [
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: lightCreamColor,
        borderWidth: 0,
      ),
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: darkGreyColor,
        borderWidth: 0,
      ),
    ],
    'https://picsum.photos/203',
    '1.2k',
  ),
  Product(
    'Antique Clock',
    '2',
    [
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: greenColor,
        borderWidth: 0,
      ),
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: orangeColor,
        borderWidth: 0,
      ),
    ],
    'https://picsum.photos/202',
    '9k',
  ),
  Product(
    'Modern Table',
    '18',
    [
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: darkGreyColor,
        borderWidth: 0,
      ),
      ColorChipWidget(
        borderRadius: BorderRadius.circular(4.0),
        chipHeight: 20.0,
        chipWidth: 20.0,
        borderColor: Colors.transparent,
        color: lightCreamColor,
        borderWidth: 0,
      ),
    ],
    'https://picsum.photos/201',
    '380',
  ),
];

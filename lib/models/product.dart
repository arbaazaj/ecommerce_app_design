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
      const ColorChipWidget(
        color: Colors.white,
        borderColor: Colors.grey,
        borderWidth: 1,
      ),
      const ColorChipWidget(
        borderColor: Colors.transparent,
        color: greenColor,
        borderWidth: 0,
      ),
      const ColorChipWidget(
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
      const ColorChipWidget(
        borderColor: Colors.transparent,
        color: darkGreyColor,
        borderWidth: 0,
      ),
      const ColorChipWidget(
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
        const ColorChipWidget(
          borderColor: Colors.transparent,
          color: darkBrownColor,
          borderWidth: 0,
        ),
        const ColorChipWidget(
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
      const ColorChipWidget(
        borderColor: Colors.transparent,
        color: lightCreamColor,
        borderWidth: 0,
      ),
      const ColorChipWidget(
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
      const ColorChipWidget(
        borderColor: Colors.transparent,
        color: greenColor,
        borderWidth: 0,
      ),
      const ColorChipWidget(
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
      const ColorChipWidget(
        borderColor: Colors.transparent,
        color: darkGreyColor,
        borderWidth: 0,
      ),
      const ColorChipWidget(
        borderColor: Colors.transparent,
        color: lightCreamColor,
        borderWidth: 0,
      ),
    ],
    'https://picsum.photos/201',
    '380',
  ),
];

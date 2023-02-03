import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/details_page.dart';
import 'package:ecommerce_app/themes/colors.dart';
import 'package:ecommerce_app/widgets/add_to_cart_button_widget.dart';
import 'package:ecommerce_app/widgets/color_chip_widget.dart';
import 'package:ecommerce_app/widgets/quantity_input_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsBodyWidget extends StatelessWidget {
  const ProductDetailsBodyWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          width: MediaQuery.of(context).size.width,
          height: 300.0,
          product.productImage,
        ),
        Text(
          product.productName,
          style: const TextStyle(
            color: darkGreyColor,
            fontSize: 26.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Stock: ${product.productStock}',
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 30.0),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: product.colors
                .map(
                  (color) => ColorChipWidget(
                    borderRadius: BorderRadius.circular(18.0),
                    chipHeight: 50.0,
                    chipWidth: 45.0,
                    color: color.color,
                    borderWidth: color.borderWidth,
                    borderColor: color.borderColor,
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 25.0),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              enableDrag: true,
              isScrollControlled: true,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.80,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              builder: (BuildContext context) {
                return DetailsPage(product: product);
              },
            );
          },
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              width: 100.0,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.grey.shade300,
              ),
              child: const Center(
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        // Bottom cart
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: lightViolet,
              borderRadius: BorderRadius.circular(26.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Quantity',
                          style: TextStyle(color: Colors.grey.shade600)),
                      Text('Total',
                          style: TextStyle(color: Colors.grey.shade600)),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      QuantityInputWidget(
                        removeItem: () {},
                        addItem: () {},
                      ),
                      Text(
                        '\$${product.productPrice}',
                        style: const TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        const AddToCartButtonWidget(),
      ],
    );
  }
}

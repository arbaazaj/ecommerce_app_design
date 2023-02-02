import 'package:ecommerce_app/widgets/color_chip_widget.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.onTap,
      required this.productName,
      required this.productImage,
      required this.productPrice,
      required this.productStock,
      required this.colors})
      : super(key: key);

  final VoidCallback onTap;
  final String productName;
  final String productImage;
  final String productPrice;
  final String productStock;
  final List<ColorChipWidget> colors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.50,
          height: 270.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            //border: Border.all(width: 1, color: Colors.grey),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  productImage,
                  height: 180.0,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                productName,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Stock: $productStock',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15.0),
              // Color and price row.
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: colors
                            .map(
                              (color) => ColorChipWidget(
                                borderRadius: BorderRadius.circular(4.0),
                                chipHeight: 20.0,
                                chipWidth: 20.0,
                                color: color.color,
                                borderWidth: color.borderWidth,
                                borderColor: color.borderColor,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  //const Spacer(),
                  Text(
                    '\$$productPrice',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

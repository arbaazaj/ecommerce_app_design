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
              Image.network(
                productImage,
                height: 180.0,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
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
              Text('Stock: $productStock',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: colors.length,
                  //   itemBuilder: (context, index) {
                  //     final chip = colors[index];
                  //     return ColorChipWidget(
                  //       color: chip.color,
                  //       borderWidth: chip.borderWidth,
                  //       borderColor: chip.borderColor,
                  //     );
                  //   },
                  // ),
                  const Spacer(),
                  Text(
                    '\$$productPrice',
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
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

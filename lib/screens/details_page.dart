import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.product});

  final Product product;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isExpan = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(
              'Details',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15.0),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'The Cottages sofa is perfect addition to your home. '
                'It has a luxurious look, ergonomic design, '
                'and is made from'
                ' high-quality materials.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            ExpansionPanelList(
              elevation: 0.0,
              expandedHeaderPadding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 3),
              expansionCallback: (index, isExpanded) {
                setState(() {
                  isExpan = !isExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (headerContext, isExpanded) {
                    return const Text(
                      'Materials',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                  canTapOnHeader: true,
                  isExpanded: isExpan,
                  body: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Text(
                                'Premium wood is the key to the product',
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Flexible(
                                child: Text(
                                  'We use 100% polyester (min. 90% recycled) for eco friendly product.',
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ExpansionPanel(
                  headerBuilder: (headerContext, isExpanded) {
                    return const Text(
                      'Measurements',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                  canTapOnHeader: true,
                  isExpanded: false,
                  body: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Text(
                                'Premium wood is the key to the product',
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Flexible(
                                child: Text(
                                  'We use 100% polyester (min. 90% recycled) for eco friendly product.',
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ExpansionPanel(
                  headerBuilder: (headerContext, isExpanded) {
                    return const Text(
                      'Care',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                  canTapOnHeader: true,
                  isExpanded: false,
                  body: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Text(
                                'Premium wood is the key to the product',
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Flexible(
                                child: Text(
                                  'We use 100% polyester (min. 90% recycled) for eco friendly product.',
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ExpansionPanel(
                  headerBuilder: (headerContext, isExpanded) {
                    return const Text(
                      'Review',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                  canTapOnHeader: true,
                  isExpanded: false,
                  body: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Text(
                                'Premium wood is the key to the product',
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Image.network(
                                widget.product.productImage,
                                height: 70.0,
                                width: 50.0,
                              ),
                              const SizedBox(width: 5.0),
                              const Flexible(
                                child: Text(
                                  'We use 100% polyester (min. 90% recycled) for eco friendly product.',
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/product_details.dart';
import 'package:ecommerce_app/themes/colors.dart';
import 'package:ecommerce_app/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            'All Product',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
          foregroundColor: blackColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: blackColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: blackColor,
              ),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            automaticIndicatorColorAdjustment: true,
            labelColor: blackColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: blackColor,
            tabs: [
              Tab(child: Text('All')),
              Tab(child: Text('Newest')),
              Tab(child: Text('Popular')),
              Tab(child: Text('Chair')),
              Tab(child: Text('Table')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: blackColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.other_houses_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(Icons.chair_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(Icons.favorite_border_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.person_2_outlined),
            ),
          ],
        ),
        // This one is problematic [Padding Issues].
        body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.0,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 0.0,
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
            final product = productList[index];
            return ProductCard(
              productName: product.productName,
              productImage: product.productImage,
              productPrice: product.productPrice,
              productStock: product.productStock,
              colors: product.colors,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(product: product),
                  ),
                );
              },
            );
          },
        ),
        // This is working fine normal listview
        // body: ListView.builder(
        //   itemCount: productList.length,
        //   itemBuilder: (context, index) {
        //     final product = productList[index];
        //     return ProductCard(
        //       onTap: () {},
        //       productName: product.productName,
        //       productImage: product.productImage,
        //       productPrice: product.productPrice,
        //       productStock: product.productStock,
        //       colors: product.colors,
        //     );
        //   },
        // ),
        // Working gridview list.
        // body: GridView.count(
        //   crossAxisSpacing: 0.0,
        //   childAspectRatio: 2/3,
        //   crossAxisCount: 2,
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   children: productList
        //       .map(
        //         (product) => ProductCard(
        //           onTap: () {},
        //           productName: product.productName,
        //           productImage: product.productImage,
        //           productPrice: product.productPrice,
        //           productStock: product.productStock,
        //           colors: product.colors,
        //         ),
        //       )
        //       .toList(),
        // ),
      ),
    );
  }
}

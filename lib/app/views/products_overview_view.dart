import 'package:flutter/material.dart';
import 'package:shop_app/app/components/product_item.dart';
import 'package:shop_app/app/data/mock_data.dart';
import 'package:shop_app/app/models/product.dart';

class ProductsOverviewView extends StatelessWidget {
  final List<Product> loadedProducts = mockProducts;

  ProductsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: loadedProducts.length,
          itemBuilder: (context, index) => ProductItem(
            product: loadedProducts[index],
          ),
        ),
      ),
    );
  }
}

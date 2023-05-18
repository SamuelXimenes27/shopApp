import 'package:flutter/material.dart';
import 'package:shop_app/app/utils/routes.dart';
import 'package:shop_app/app/views/product_detail_view.dart';
import 'package:shop_app/app/views/products_overview_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
          fontFamily: 'Lato'),
      routes: {
        RoutesConst.home: (context) => ProductsOverviewView(),
        RoutesConst.productDetail: (context) => const ProductDetailView(),
      },
    );
  }
}

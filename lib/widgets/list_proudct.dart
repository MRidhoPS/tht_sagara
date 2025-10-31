import 'package:flutter/material.dart';
import 'package:tht_sagara/model/data_model.dart';
import 'package:tht_sagara/widgets/product_card.dart';

GridView listProduct(
    List<Product> products, int crossAxisCount, BoxConstraints constraints) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: products.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: constraints.maxWidth < 600 ? 2.2 : 2.6,
    ),
    itemBuilder: (context, i) {
      return ProductCard(product: products[i]);
    },
  );
}

Container bannerSection(BoxConstraints constraints) {
  return Container(
    height: constraints.maxWidth < 600 ? 150 : 200,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.black,
      image: const DecorationImage(
        image: AssetImage('assets/handshake.jpg'),
        fit: BoxFit.cover,
        opacity: 0.6,
      ),
    ),
    child: Center(
      child: Text(
        'Selamat Datang di Marketplace!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: constraints.maxWidth < 600 ? 18 : 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

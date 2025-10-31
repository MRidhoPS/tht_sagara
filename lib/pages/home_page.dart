import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tht_sagara/providers/product_provider.dart';
import 'package:tht_sagara/widgets/category_section.dart';
import 'package:tht_sagara/widgets/list_proudct.dart';
import 'package:tht_sagara/widgets/search_section.dart';
import 'package:tht_sagara/widgets/user_information_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<ProductProvider>().products;

    final searchController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 1;
            if (constraints.maxWidth > 600) crossAxisCount = 2;
            if (constraints.maxWidth > 1000) crossAxisCount = 3;
            double horizontalPadding = constraints.maxWidth < 600 ? 12 : 24;

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserInformationSection(),
                    const SizedBox(
                      height: 10,
                    ),
                    SearchSection(searchController: searchController),
                    const SizedBox(
                      height: 20,
                    ),
                    bannerSection(constraints),
                    const SizedBox(height: 20),
                    Text(
                      'Kategori',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    CategorySection(),
                    const SizedBox(height: 20),
                    Text(
                      'Produk Tersedia',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    listProduct(products, crossAxisCount, constraints),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
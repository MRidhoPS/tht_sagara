import 'package:flutter/material.dart';
import 'package:tht_sagara/widgets/category_chip.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryChip('Elektronik'),
          CategoryChip('Pakaian'),
          CategoryChip('Aksesoris'),
          CategoryChip('Rumah Tangga'),
          CategoryChip('Olahraga'),
        ],
      ),
    );
  }
}

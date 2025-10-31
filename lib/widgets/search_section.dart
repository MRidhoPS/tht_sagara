import 'package:flutter/material.dart';
import 'package:tht_sagara/widgets/text_input.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              controller: searchController,
              hintText: "Search",
            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.favorite_border, size: 24),
          const SizedBox(width: 8),
          const Icon(Icons.notifications_none, size: 24),
          const SizedBox(width: 8),
          const Icon(Icons.menu, size: 24),
        ],
      ),
    );
  }
}

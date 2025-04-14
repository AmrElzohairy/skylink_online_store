import 'package:flutter/material.dart';
import 'package:rika_online_store/feature/Home/presentation/ui/widgets/filter_item.dart';

class FiltersList extends StatefulWidget {
  const FiltersList({super.key});

  @override
  State<FiltersList> createState() => _FiltersListState();
}

class _FiltersListState extends State<FiltersList> {
  String isSelected = "All";

  final List<String> categories = const [
    'All',
    'Jackets',
    'Shoes',
    'T-shirts',
    'Dresses',
    'Sneakers',
    'Tops',
    'Coats',
    'Lingenies',
    'Shorts',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            categories.map((category) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = category;
                    });
                  },
                  child: FilterItem(
                    category: category,
                    isSelected: isSelected == category,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}

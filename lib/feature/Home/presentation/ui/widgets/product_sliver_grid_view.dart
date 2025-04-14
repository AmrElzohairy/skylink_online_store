import 'package:flutter/material.dart';
import 'package:rika_online_store/feature/Home/presentation/ui/widgets/products_grid_item.dart';

class ProductSliverGridView extends StatelessWidget {
  const ProductSliverGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 155 / 240,
      ),
      itemBuilder: (context, index) {
        return const ProductGridItem();
      },
    );
  }
}

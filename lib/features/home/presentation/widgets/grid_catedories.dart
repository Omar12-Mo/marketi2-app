import 'package:flutter/material.dart';

class GridCategories extends StatelessWidget {
  const GridCategories({super.key, required this.itemBuilder});
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 10,
          mainAxisExtent: 130,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridOfItems extends StatelessWidget {
   GridOfItems({super.key, required this.itemCount , required this.itemBuilder});
  final int itemCount;
  Widget Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 200,
        crossAxisSpacing: 19,
       mainAxisSpacing: 15
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder
    );
  }
}

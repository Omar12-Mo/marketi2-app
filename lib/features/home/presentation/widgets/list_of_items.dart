import 'package:flutter/material.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({
    super.key,
    required this.itemCount,
    required this.itemBuilder, required this.listHeigh,
  });
  final double listHeigh;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: listHeigh,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}

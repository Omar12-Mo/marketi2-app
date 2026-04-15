import 'package:flutter/material.dart';
import 'package:testapp/app/generated/assets.dart';

class AddFavourite extends StatefulWidget {
  const AddFavourite({super.key});

  @override
  State<AddFavourite> createState() => _AddFavouriteState();
}

class _AddFavouriteState extends State<AddFavourite> {
  bool favourite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          favourite = !favourite;
        });
      },
      child: Image.asset( favourite? Assets.iconsHeartIcon : Assets.iconsHeartIconEmpty),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/app_user.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/generated/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Gap(14),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.lightBlue100,
                  radius: 30,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      sl<AppUser>().currentUser!.image!
                    ),
                    radius: 27,
                  ),
                  
                ),

              Text("hi ${sl<AppUser>().currentUser!.name}")

              ],
            ),
          ],
        ),
      ),
    );
  }
}

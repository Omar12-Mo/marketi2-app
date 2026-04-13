import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/app_user.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/generated/assets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.lightBlue100,
          radius: 25,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              sl<AppUser>().currentUser?.image ?? Assets.logeUserProfile
            ),
            radius: 22,
          ),
          
        ),
        Gap(10),
      Text("hi ${(sl<AppUser>().currentUser?.name) ??"omar" } !"  , style: medium(color: AppColors.textPrimary, fontsize: 20),),
      Spacer(),
      Image.asset(Assets.iconsBellIconUia,height: 28,width: 28,)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/edit_profile/components/profile_form.dart';
import 'package:nike_store/presentation/screens/profile/components/profile_avatar.dart';
import 'package:nike_store/presentation/screens/profile/profile_screen.dart';
import 'package:nike_store/presentation/utils/components/header.dart';
import 'package:nike_store/presentation/utils/components/next_page.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Header(
          text: 'Profile',
          child: TextButton(
            onPressed: () => buildDialog(context),
            child: Text(
              'Done',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontFamily: 'Raleway',
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold,
                    color: appColors.backgroundColor,
                  ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        const ProfileAvatar(child: SizedBox()),
        SizedBox(height: getProportionateScreenHeight(10)),
        Text(
          'Emmanuel Oyiboke',
          style: Theme.of(context).textTheme.headline2?.copyWith(
                fontFamily: 'Raleway',
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
                color: appColors.blackTextColor,
              ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        Text(
          'Change Profile Picture',
          style: Theme.of(context).textTheme.headline2?.copyWith(
                fontFamily: 'Raleway',
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.bold,
                color: appColors.backgroundColor,
              ),
        ),
        const ProfileForm(),
      ],
    );
  }
}

Future buildDialog(BuildContext context) async {
  AppColors appColors = AppColors();
  return Container(
    child: await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              'Are You Sure You Want To Save',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'No',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.bold,
                        color: appColors.backgroundColor,
                      ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(50),
              ),
              TextButton(
                onPressed: () => nextPageOnly(
                  context: context,
                  screen: const ProfileScreen(),
                ),
                child: Text(
                  'Yes',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontFamily: 'Raleway',
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.bold,
                        color: appColors.backgroundColor,
                      ),
                ),
              ),
            ],
          );
        }),
  );
}

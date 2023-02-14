import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/edit_profile/edit_profile_screen.dart';
import 'package:nike_store/presentation/utils/components/next_page.dart';

class ProfileAvatar extends StatelessWidget {
  final Widget? child;
  const ProfileAvatar({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        child ??
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 13,
                child: GestureDetector(
                  onTap: () => nextPage(
                      context: context, screen: const EditProfileScreen()),
                  child: const Icon(
                    Icons.edit,
                    size: 12,
                  ),
                ),
              ),
            ),
      ],
    );
  }
}

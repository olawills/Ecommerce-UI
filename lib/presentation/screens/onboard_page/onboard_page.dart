import 'package:flutter/material.dart';
import 'package:nike_store/presentation/screens/onboard_page/components/onboard_content.dart';
import 'package:nike_store/presentation/screens/signIn/sign_in_screen.dart';
import 'package:nike_store/presentation/utils/components/next_page.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

import '../../utils/components/default_button.dart';
import 'components/onboard_data.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  bool onLastPage = false;
  late PageController _pageController;
  int currentIndex = 0;
  bool lastPage = false;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: OnboardData.onboardData.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                  onLastPage = (index == 1 || index == 2);
                  lastPage = (index == 2);
                });
              },
              itemBuilder: (context, index) {
                return OnBoardContent(
                  title: OnboardData.onboardData[index]['title'] ?? "",
                  image: OnboardData.onboardData[index]['image'] ?? "",
                  bodyText: OnboardData.onboardData[index]['body_text'] ?? "",
                  desc: OnboardData.onboardData[index]['desc'] ?? "",
                );
              },
            ),
            Container(
              alignment: const Alignment(0, 0.65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  OnboardData.onboardData.length,
                  (index) => buildDot(index: index),
                ),
              ),
            ),
            onLastPage
                ? Container(
                    alignment: const Alignment(0, 0.9),
                    child: DefaultButton(
                      textColor: appColors.blackTextColor,
                      backgroundColor: appColors.textColor,
                      text: "Next",
                      onPressed: () {
                        lastPage
                            ? nextPageOnly(
                                context: context,
                                screen: const SignInScreen(),
                              )
                            : _pageController.animateToPage(2,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut);
                      },
                    ),
                  )
                : Container(
                    alignment: const Alignment(0, 0.9),
                    child: DefaultButton(
                      text: "Get Started",
                      textColor: appColors.blackTextColor,
                      backgroundColor: appColors.textColor,
                      onPressed: () {
                        _pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 5,
      width: currentIndex == index ? 40 : 30,
      decoration: BoxDecoration(
          color: currentIndex == index
              ? AppColors().boxColor
              : AppColors().textColor,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}

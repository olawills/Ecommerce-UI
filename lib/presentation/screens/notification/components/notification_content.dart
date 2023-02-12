import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class NotificationContent extends StatelessWidget {
  final String time;
  final Color imageBg;
  final Widget image;
  final Color containerBg;
  const NotificationContent({
    Key? key,
    required this.time,
    required this.imageBg,
    required this.containerBg, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: getProportionateScreenHeight(130),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: containerBg,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getProportionateScreenHeight(120),
                    width: getProportionateScreenWidth(100),
                    decoration: BoxDecoration(
                      color: imageBg,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: image,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'We Have New \nProducts With Offers',
                          style:
                              Theme.of(context).textTheme.headline2?.copyWith(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: appColors.backgroundColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              '\$364.95',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: appColors.blackTextColor,
                                  ),
                            ),
                            SizedBox(width: getProportionateScreenWidth(20)),
                            Text(
                              '\$260.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: appColors.blackTextColor
                                        .withOpacity(0.4),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          color: appColors.blackTextColor,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

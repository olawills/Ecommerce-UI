import 'package:flutter/material.dart';
import 'package:nike_store/presentation/utils/components/size_config.dart';
import 'package:nike_store/presentation/utils/theme_manager/styles.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstText;
  late String secondText;

  double textHeight = SizeConfig.screenHeight * 0.3;
  bool hiddenText = true;

  @override
  void initState() {
    if (widget.text.length > textHeight) {
      firstText = widget.text.substring(0, textHeight.toInt());
      secondText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstText = widget.text;
      secondText = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Column(
      children: [
        Text(
          '$firstText....',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Read more',
              style: TextStyle(
                color: appColors.backgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

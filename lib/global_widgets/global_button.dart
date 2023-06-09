import 'package:flutter/material.dart';


import '../constants/sizedbox.dart';
import '../styles/colors/app_colors.dart';
import '../styles/styles/custom_text_style.dart';
import '../styles/styles/global_border_style.dart';

class GlobalButton extends StatelessWidget {
  final String text;
  final IconData? sufixButtonIcon;
  // final bool clicked;
  final VoidCallback? onTap;
  const GlobalButton({
    Key? key,
    required this.text,
    this.sufixButtonIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: AppSize.paddingV16,
      shape: RoundedRectangleBorder(
        borderRadius: GlobalBorderStyle.borderRadius18,
      ),
      onPressed: onTap,
      elevation: 0,
      fillColor: AppColor.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,
              textAlign: TextAlign.center,
              style: CustomTextStyle.tinyStyleBold
                  .copyWith(color: AppColor.versionColorWhite
                      // AppColor.numberColor,
                      )),
        ],
      ),
    );
  }
}

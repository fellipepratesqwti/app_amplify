import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';

class CustomButtonStyle {
  static final stylePurple = CustomButtonStyle(
    backgroundColor: AppColors.primary,
    titleColor: AppColors.white,
    fontSize: 15,
    rippleColor: AppColors.white,
  );

  static final styleOutlinePurple = CustomButtonStyle(
    backgroundColor: AppColors.white,
    titleColor: AppColors.primary,
    fontSize: 15,
    borderColor: AppColors.primary,
    rippleColor: AppColors.primary,
  );

  final Color backgroundColor;
  final Color titleColor;
  final double fontSize;
  final Color borderColor;
  final Color rippleColor;

  CustomButtonStyle({
    required this.backgroundColor,
    required this.titleColor,
    required this.fontSize,
    required this.rippleColor,
    this.borderColor = Colors.white,
  });
}

class CustomButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final CustomButtonStyle style;
  final void Function()? onPressed;
  final EdgeInsets? padding;
  final bool border;
  final double? borderRadius;
  final bool disabled;
  final FocusNode? focusNode;

  const CustomButtonWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.style,
    required this.onPressed,
    this.padding,
    this.border = false,
    this.borderRadius,
    this.disabled = false,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        focusNode: focusNode,
        onPressed: disabled ? null : onPressed,
        style: TextButton.styleFrom(
          primary: style.rippleColor,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: disabled
              ? style.backgroundColor.withOpacity(0.5)
              : style.backgroundColor,
          shape: border
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                  side: BorderSide(
                    color: style.borderColor,
                    width: 1,
                  ),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 20),
                ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: style.fontSize,
            fontWeight: FontWeight.w400,
            color: style.titleColor,
          ),
        ),
      ),
    );
  }
}

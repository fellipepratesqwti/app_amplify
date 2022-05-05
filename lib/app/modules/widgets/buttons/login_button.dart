import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../themes/app_colors.dart';

class LoginButton extends GetView {
  final double width;
  final double height;
  final String text;
  final String assetImage;
  final Function()? function;

  const LoginButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.assetImage,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.buttonBorder),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 45),
              Image.asset(
                assetImage,
                width: 22,
                height: 22,
              ),
              const SizedBox(width: 17),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../themes/app_colors.dart';

class CustomTextField extends GetView {
  final String label;
  final Color? fillColor;
  final IconData? iconData;
  final TextEditingController textEditingController;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool? password;
  final Function()? onTapPassword;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.label,
    this.fillColor,
    this.iconData,
    required this.textEditingController,
    this.textInputType,
    this.inputFormatters,
    this.password,
    this.onTapPassword,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType ?? TextInputType.name,
      inputFormatters: inputFormatters,
      obscureText: password ?? false,
      style: const TextStyle(
          fontSize: 14,
          color: AppColors.firstTextColor,
          fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        fillColor: fillColor ?? Colors.transparent,
        filled: true,
        label: Text(
          label,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.labelColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        suffixIcon: password != null
            ? GestureDetector(
                onTap: onTapPassword,
                child: Icon(
                  password == false
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 18,
                  color: AppColors.labelColor,
                ),
              )
            : (iconData != null
                ? Icon(
                    iconData,
                    size: 18,
                    color: AppColors.labelColor,
                  )
                : null),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.inputBorder),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1, color: AppColors.focusedBorder),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.erro),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      validator: validator,
    );
  }
}

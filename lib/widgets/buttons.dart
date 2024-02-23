import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';

class DigitButton extends StatelessWidget {
  const DigitButton({
    required this.label,
    this.textcolor = Colors.white,
    this.iconData,
    super.key,
  });
  final String label;
  final Color textcolor;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Material(
        elevation: 3,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: Colors.black26,
          child: iconData != null // Check if icon data is provided
              ? Icon(
                  iconData,
                  size: 32,
                  color: textcolor,
                ) // Display icon if available
              : Text(
                  label,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: textcolor,
                  ),
                ),
        ),
      ),
    );
  }
}

import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';

class DigitButton extends StatelessWidget {
  const DigitButton({
    required this.label,
    this.textcolor = Colors.white,
    this.icon, // Change iconData to icon
    Key? key, // Corrected super.key to Key? key
  }) : super(key: key); // Corrected super.key to super(key: key)

  final String label;
  final Color textcolor;
  final IconData? icon; // Change iconData to icon

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
          child: icon != null // Check if icon data is provided
              ? Icon(
                  icon,
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

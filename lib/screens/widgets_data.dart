// ignore_for_file: prefer_const_constructors

import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

List<Widget> buttonList = [
  DigitButton(
    icon: Icons.backspace_outlined,
    label: "cut",
    textcolor: AppColors.secondaryColor,
  ),
  DigitButton(
    label: "/",
    textcolor: AppColors.secondaryColor,
  ),
  DigitButton(
    label: "*",
    textcolor: AppColors.secondaryColor,
  ),
  DigitButton(
    label: "AC",
    textcolor: AppColors.secondaryColor,
  ),
  DigitButton(
    label: "7",
  ),
  DigitButton(
    label: "8",
  ),
  DigitButton(
    label: "9",
  ),
  DigitButton(
    label: "-",
    textcolor: AppColors.secondaryColor,
  ),
  DigitButton(
    label: "4",
  ),
  DigitButton(
    label: "5",
  ),
  DigitButton(
    label: "6",
  ),
  DigitButton(
    label: "+",
    textcolor: AppColors.secondaryColor,
  ),
  DigitButton(
    label: "1",
  ),
  DigitButton(
    label: "2",
  ),
  DigitButton(
    label: "3",
  ),
  DigitButton(
    label: "%",
  ),
  DigitButton(
    label: "0",
  ),
  DigitButton(
    label: ".",
  ),
];

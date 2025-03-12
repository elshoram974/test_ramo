import 'package:flutter/material.dart';

abstract final class CustomTextStyle {
  const CustomTextStyle();
  static const String inter = "Inter";
  static const String plusJakartaSans = "PlusJakartaSans";

  static const TextStyle interMediam8 = TextStyle(
    fontFamily: inter,
    fontSize: 8,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  static const TextStyle interBold14 = TextStyle(
    fontFamily: inter,
    fontSize: 8,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle plusMediam14 = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle plusBold14 = TextStyle(
    fontFamily: plusJakartaSans,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}

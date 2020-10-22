import 'package:farmapp/src/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static TextStyle get body {
    return GoogleFonts.roboto(
      color: AppColors.darkgray,
      fontSize: 16.0,
    );
  }

  static TextStyle get suggestion {
    return GoogleFonts.roboto(
      color: AppColors.lightgray,
      fontSize: 14.0,
    );
  }

  static TextStyle get buttonTextLight {
    return GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get link {
    return GoogleFonts.roboto(
      color: AppColors.straw,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );
  }
}

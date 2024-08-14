part of '../ui_library.dart';

class AppColors {
  static const Color black = Color(0xff1D1D1D);
  static const Color grey = Color(0xffBCBCBC);
  static const Color greyLight = Color(0xffEEEEEF);
  static const Color white = Color(0xffFFFFFF);
  static const Color main = Color(0xffCF497E);
  static const Color errorRed = Color(0xffED3E3E);
  static const Color blue = Color(0xff409EFF);
  static const Color gradientBegin = Color(0xffE69633);
  static const Color gradientEnd = Color(0xffCF497E);
  static const Color iconColor = Color(0xffB3B3B3);
  static const Color shadowColor = Color(0x0000001A);
  static const Color hintSearchColor = Color(0xff7A7A7E);
  static const Color hintDisabledSearchColor = Color(0xffCECECE);

  static const LinearGradient gradient = LinearGradient(
    colors: [
      gradientBegin,
      gradientEnd,
    ],
  );
}

import 'package:flutter/material.dart';

abstract class AppColors {
  Color get redApp;
  Color get redLight;
  Color get whiteAppText;
  Color get whiteAppBackground;
  Color get whiteAppBackground2;
  Color get cyanTitle;
  Color get cyanDark;
  Color get deepBlue;
  Color get startBlue;
  Color get gray;
  Color get grayHint;
  Color get grayBorder;
}

/// fácil alteração
class AppColorsDefault implements AppColors {
  @override
  Color get cyanDark => const Color(0xff01f2f1);

  /// used in appBar title for example
  @override
  Color get cyanTitle => const Color(0xff01f2f1);

  /// azul escuro, ex. em botões com o fundo cinza
  @override
  Color get deepBlue => const Color(0xff232e3f);

  /// blue tint used when starting pairing processes
  @override
  Color get startBlue => const Color(0xff056efe);

  /// texto secundário nas telas Módulos
  @override
  Color get gray => const Color(0xff676767);

  ///
  @override
  Color get redApp => Colors.red;

  @override
  Color get redLight => Colors.redAccent[200] ?? Colors.redAccent;

  /// ex. Termos e Consdições
  @override
  Color get whiteAppText => Colors.white;

  @override
  Color get whiteAppBackground => const Color(0xffe4e4e4);

  @override
  Color get whiteAppBackground2 => const Color(0xffc4c4c4);

  @override
  Color get grayHint => const Color(0xffCDCDCD);

  @override
  Color get grayBorder => const Color(0xFFa1a1a1);
}

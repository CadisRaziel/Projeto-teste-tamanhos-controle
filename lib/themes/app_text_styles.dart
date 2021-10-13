import 'package:controle/themes/app_theme.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  TextStyle greeting(Color color);
  TextStyle title(Color color);
  TextStyle primaryText(Color color);
  TextStyle secondaryText(Color color);
  TextStyle textButton(Color color);
  TextStyle detailsTexts(Color color);
  TextStyle primaryBold(Color color);
  TextStyle bold18(Color color);
  TextStyle timerText();
  TextStyle labelLocation(Color color);
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle greeting(Color color) =>
      TextStyle(fontFamily: 'CodeProLC', fontSize: 20, color: color);

  @override
  TextStyle bold18(Color color) =>
      TextStyle(fontFamily: 'CodeProBold', fontSize: 18, color: color);

  @override
  TextStyle primaryText(Color color) =>
      TextStyle(fontFamily: 'CodeProLC', fontSize: 18, color: color);

  @override
  TextStyle secondaryText(Color color) =>
      TextStyle(fontFamily: 'CodeProLC', fontSize: 16, color: color);

  @override
  TextStyle textButton(color) =>
      TextStyle(fontFamily: 'CodeProLC', fontSize: 16, color: color);

  @override
  TextStyle title(Color color) =>
      TextStyle(fontFamily: 'CodeProBold', fontSize: 16, color: color);

  @override
  TextStyle primaryBold(Color color) =>
      TextStyle(fontFamily: 'CodeProBold', fontSize: 16, color: color);

  @override
  TextStyle detailsTexts(Color color) =>
      TextStyle(fontFamily: 'CodeProLC', fontSize: 14, color: color);

  @override
  TextStyle timerText() => TextStyle(
      fontFamily: 'CodeProBold',
      fontSize: 120,
      color: AppTheme.colors.deepBlue);

  @override
  TextStyle labelLocation(Color color) =>
      TextStyle(fontFamily: 'CodeProBold', fontSize: 18, color: color);
}

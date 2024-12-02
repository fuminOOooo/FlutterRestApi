import 'package:flutter/material.dart';

class Constant {
  static const String appName = 'FlutterRestApi';
  static const String dataEndpoint = 'https://pokeapi.co/api/v2/pokemon?';
  static const String oneDataEndpoint = 'https://pokeapi.co/api/v2/pokemon/';
  static const String dataOffsetParameter = 'offset=';
  static const String increaseOffsetButton = '>';
  static const String decreaseOffsetButton = '<';
  static const String fixedDataLimitParameter = 'limit=10';
  static const String imageEndpoint =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/';
  static const String showdownImageEndpoint =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/';
  static const String imageExtension = '.png';
  static const String gifImageExtension = '.gif';

  static const int gridColumnCount = 2;
  
  static const double bigFontSize = 20.0;
  static const double imageScaleMultiplier = 0.4;

  static const EdgeInsets defaultHorizontalPaddingValue =
      EdgeInsets.only(left: 8.0, right: 8.0);

  static const EdgeInsets defaultVerticalPaddingValue =
      EdgeInsets.only(top: 8.0, bottom: 8.0);

  static const TextStyle boldedText = TextStyle(fontWeight: FontWeight.bold);
  static const TextStyle bigBoldedText = TextStyle(fontWeight: FontWeight.bold, fontSize: bigFontSize);
}

String imageWholeUrl(int itemIndex) {
  return '${Constant.imageEndpoint}$itemIndex${Constant.imageExtension}';
}

String gifImageWholeUrl(int itemIndex) {
  return '${Constant.showdownImageEndpoint}$itemIndex${Constant.gifImageExtension}';
}

Padding horizontalDefaultPadding(Widget child) {
  return Padding(
    padding: Constant.defaultHorizontalPaddingValue,
    child: child,
  );
}

Padding verticalDefaultPadding(Widget child) {
  return Padding(
    padding: Constant.defaultVerticalPaddingValue,
    child: child,
  );
}

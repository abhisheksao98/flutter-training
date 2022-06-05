import 'package:flutter/material.dart';

import 'constants.dart';

Container containerForPageBackgroundChangeColor({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: pagesBackgroundGradientColor,
      ),
    ),
    child: child!,
  );
}

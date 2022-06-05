import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/productcatalog.dart';

Future main() async {
  runApp(const SMDemoApp());
}

class SMDemoApp extends StatelessWidget {
  const SMDemoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: ProductsCatalog());
  }
}

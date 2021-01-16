import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'routes.dart';
import 'utils/colors.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() => initializeDateFormatting('pt_BR', null).then(
      (_) => runApp(EcoarApp()),
    );

class EcoarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light));

    Get.put(AppController());
    return GetMaterialApp(
      title: 'Ecoar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.WHITE,
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.rightToLeft,
      initialRoute: "/",
      getPages: routes(),
    );
  }
}

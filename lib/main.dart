import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdb_gro_app/generated/locales.g.dart';
import 'package:rdb_gro_app/route/route_helper.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('lo_LO', null).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translationsKeys: AppTranslation.translations,
      locale: const Locale('lo', 'LO'),
      initialRoute: RouteHelper.splashPage,
      getPages: RouteHelper.routes,
    );
  }
}

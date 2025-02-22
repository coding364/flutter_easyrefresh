import 'package:example/l10n/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_refresh/easy_refresh.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'page/home.dart';
import 'page/more/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Get.put(ThemeController());
    EasyRefresh.defaultHeaderBuilder = () => ClassicHeader(
          dragText: 'Pull to refresh'.tr,
          armedText: 'Release ready'.tr,
          readyText: 'Refreshing...'.tr,
          processingText: 'Refreshing...'.tr,
          processedText: 'Succeeded'.tr,
          noMoreText: 'No more'.tr,
          failedText: 'Failed'.tr,
          messageText: 'Last updated at %T'.tr,
        );
    EasyRefresh.defaultFooterBuilder = () => ClassicFooter(
          dragText: 'Pull to load'.tr,
          armedText: 'Release ready'.tr,
          readyText: 'Loading...'.tr,
          processingText: 'Loading...'.tr,
          processedText: 'Succeeded'.tr,
          noMoreText: 'No more'.tr,
          failedText: 'Failed'.tr,
          messageText: 'Last updated at %T'.tr,
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EasyRefresh',
      theme: ThemeModel.light,
      darkTheme: ThemeModel.dark,
      translations: AppIntl(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en'),
      home: const HomePage(),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
    );
  }
}

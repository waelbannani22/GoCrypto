import 'package:cryptocurrency_app/constants/app_theme.dart';
import 'package:cryptocurrency_app/ui/screens/login.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'provider/settings_provider.dart';
import 'ui/home.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

void main() async {
  await dotenv.load(fileName: ".env");

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configLoading();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('es')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: ProviderScope(child: MyApp())));
}

class MyApp extends HookConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(cryptoSettings);

    final themeMode = settings.maybeWhen(
        data: (data) => Utils.getThemeMode(data.themeMode),
        orElse: () => ThemeMode.system);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: SigninPage(),
        themeMode: themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark);
  }
}

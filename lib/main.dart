import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:univibeflutter/frontend/global/theme/theme_data_light.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/sign_in_screen.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/splach_screen.dart';
import 'package:univibeflutter/frontend/presentation/screens/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => ThemeNotifier()),
    //   ],
    //   child: MyApp(),
    // ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en', 'US'),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', ''),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Material Flutter Project',
      theme: themeData,
      home: const SplachScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:univibeflutter/core/theme/theme_data_light.dart';
import 'package:univibeflutter/screens/profile/profile_home.dart';
import 'package:univibeflutter/screens/team_tasks/team_tasks_home.dart';

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
      
      debugShowCheckedModeBanner: false,
      title: 'Material Flutter Project',
      theme: themeData,
      home: const ProfileHome(),
    );
  }
}

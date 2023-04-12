import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_in_flutter/provider/auth_provider.dart';
import 'package:provider_in_flutter/provider/count_provider.dart';
import 'package:provider_in_flutter/provider/example_one_provider.dart';
import 'package:provider_in_flutter/provider/favourite_provider.dart';
import 'package:provider_in_flutter/provider/theme_changer_provider.dart';
import 'package:provider_in_flutter/screen/favourite/favourite_screen.dart';
import 'package:provider_in_flutter/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
          ChangeNotifierProvider(create: (_) => AuthProvider())
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                appBarTheme: const AppBarTheme(backgroundColor: Colors.teal)),
            // home: const LoginScreen(),
            home: const FavouriteScreen(),
          );
        }));
  }
}

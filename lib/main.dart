import 'package:flutter/material.dart';
import 'package:nike_store/presentation/routes/app_routes.dart';
import 'package:nike_store/presentation/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This A Project That Might Take Months to Complete.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Store',
      // onGenerateRoute: routeSettings.onGenerateRoute,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

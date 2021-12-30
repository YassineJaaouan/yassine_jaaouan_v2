import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_technique_stacked/ui/views/login/login_view.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';
import 'utilities/palette.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      home: const LoginView(),
    );
  }
}


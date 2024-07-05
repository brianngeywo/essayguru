import 'package:essayguru/routes.dart';
import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        const MaterialApp(
          onGenerateRoute: Routes.generatedPageRoutes,
          debugShowCheckedModeBanner: false,
          initialRoute: HomePage.routeName,
          home: HomePage(),
        ),
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(730, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

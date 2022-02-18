import 'package:essayguru/constants/const.dart';
import 'package:essayguru/routes.dart';
import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           primary: myPrimaryColor,
//           secondary: mySecondaryColor,
//         ),
//       ),
//       home:  const HomePage(title: 'Flutter Demo Home Page'),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(const HomePage(title: 'EssayGURU'),
          // maxWidth: 1200,
          // minWidth: 480,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      // initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
    );
  }
}

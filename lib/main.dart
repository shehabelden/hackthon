import 'package:beamer/beamer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'package:untitled/cache_helper/cache_helper.dart';
import 'package:untitled/web_ui/Beamer_location.dart';
import 'auth/log_in_chick.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  //TODO use this CacheHelper class to set or get from SharedPreferences
  await CacheHelper.init();
  runApp( MyApp());
}
// class MyCustomScrollBehavior extends MaterialScrollBehavior {
//   // Override behavior methods and getters like dragDevices
//   @override
//   Set<PointerDeviceKind> get dragDevices => {
//     PointerDeviceKind.touch,
//     PointerDeviceKind.mouse,
//     // etc.
//   };
// }
class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
  locationBuilder: BeamerLocationBuilder(
  beamLocations: [WebLocation()],
  ),
  notFoundRedirectNamed: '/',
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher:
      BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}



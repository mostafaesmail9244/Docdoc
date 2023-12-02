import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/core/routing/app_router.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/core/theming/colors_manager.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: ColorManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generatRoute,
      ),
    );
  }
}

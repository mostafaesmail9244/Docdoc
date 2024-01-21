import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mide_mate/bloc_observer.dart';
import 'package:mide_mate/core/d_i/injection.dart';
import 'package:mide_mate/core/routing/app_router.dart';
import 'package:mide_mate/doc_app.dart';

void main() async {
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

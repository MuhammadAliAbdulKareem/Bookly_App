import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/domain/use_cases/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_model(manager)/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/service_locator.dart';
import 'features/home/presentation/view_model(manager)/newest_books_cubit/newest_books_cubit.dart';

void main() {
  serviceLocatorSetup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          title: 'Bookly',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Constants.kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
          themeMode: ThemeMode.system,
        ),
      ),
      // child: SplashView(),
    );
  }
}

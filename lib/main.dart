import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';
import 'core/utils/service_locator.dart';
import 'features/home/domain/entities/book_entity.dart';
import 'features/home/presentation/view_model_manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/view_model_manager/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  serviceLocatorSetup();
  Hive.registerAdapter(BookEntityAdapter());
  Hive.initFlutter();
  await Hive.openBox<BookEntity>(Constants.kFeaturedBox);
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

import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'core/utils/simple_bloc_observer.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/domain/entities/book_entity.dart';
import 'features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'features/home/presentation/view_model_manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/view_model_manager/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  serviceLocatorSetup();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(Constants.kFeaturedBox);
  await Hive.openBox<BookEntity>(Constants.kNewestBox);
  await Hive.openBox<BookEntity>(Constants.kSimilarBox);
  Bloc.observer = SimpleBlocObserver();
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
            create: (context) => FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                locator.get<HomeRepoImpl>(),
              ),
            )..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) => NewestBooksCubit(
              FetchNewestBooksUseCase(
                locator.get<HomeRepoImpl>(),
              ),
            )..fetchNewestBooks(),
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

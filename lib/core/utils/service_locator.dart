import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_impl.dart';

final locator = GetIt.instance;

void serviceLocatorSetup() {
  locator.registerSingleton<ApiServices>(ApiServices(Dio()));
  locator.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        locator.get<ApiServices>(),
      ),
    ),
  );
}

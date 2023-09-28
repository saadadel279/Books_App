import 'package:books_app/core/utils/api_services.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit=GetIt.instance;
void setupServicesLocator(){
  getit.registerSingleton<ApiServices>(ApiServices(Dio()));
  getit.registerSingleton<HomeRepoImp>(HomeRepoImp(apiServices: getit.get<ApiServices>()
    
  ));
}
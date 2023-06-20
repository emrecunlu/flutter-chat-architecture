import 'package:flutter_app/core/viewmodels/auth/login_viewmodel.dart';
import 'package:flutter_app/core/viewmodels/auth/register_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<RegisterViewModel>(() => RegisterViewModel());
  locator.registerFactory<LoginViewModel>(() => LoginViewModel());
}

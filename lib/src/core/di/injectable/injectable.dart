import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void injectDependencies() => getIt.init();

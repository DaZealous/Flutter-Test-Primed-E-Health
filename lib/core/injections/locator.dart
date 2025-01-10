import 'package:flutter_assessment/core/injections/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt sl = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => sl.init();

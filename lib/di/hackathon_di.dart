import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'hackathon_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future configureHackathonDependencies() async {
  await $initGetIt(getIt);
}

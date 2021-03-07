import 'package:daniel_engage/ui/login/login_view.dart';
import 'package:daniel_engage/ui/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: LoginView),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
])
class AppSetup {}

import 'package:daniel_engage/app/app.locator.dart';
import 'package:daniel_engage/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  var _title = 'Hola';
  String get title => _title;

  Future<void> setTitle(String value) async {
    setBusy(true);

    Future.delayed(Duration(seconds: 3));

    _title = value;
    notifyListeners();

    setBusy(false);
  }

  Future<void> navigateToLogin() async {
    var _navigationService = locator<NavigationService>();
    await _navigationService.navigateTo(
      Routes.loginView,
      arguments: LoginViewArguments(pageTitle: _title),
    );
  }
}

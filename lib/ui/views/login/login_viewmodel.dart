// ViewModel


import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_technique_stacked/app/app.locator.dart';
import 'package:test_technique_stacked/app/app.router.dart';

class LoginViewModel extends BaseViewModel {
  bool _secureText =true;
  bool get secureText=>_secureText;
  final _navigationService = locator<NavigationService>();


  void passwordSecured(){
    _secureText = !_secureText;
  }

  void navigateToSignUpView() {
    _navigationService.navigateTo(Routes.signUpView);
  }
  void navigateToHomeView(){
    _navigationService.navigateTo(Routes.homeView);
  }

}
// ViewModel


import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_technique_stacked/app/app.locator.dart';
import 'package:test_technique_stacked/app/app.router.dart';

class SignUpViewModel extends BaseViewModel {
  bool _secureText =true;
  bool _secureTextTwo = true;

  bool get secureText=>_secureText;
  bool get secureTextTwo=>_secureTextTwo;

  final _navigationService = locator<NavigationService>();

  void passwordSecured(){
    _secureText = !_secureText;
  }
  void confirmPasswordSecured(){
      _secureTextTwo = !_secureTextTwo;
  }



  void navigateToLoginView() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
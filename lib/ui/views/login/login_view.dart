// ViewModel
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique_stacked/utilities/constant.dart';


import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder:()=> LoginViewModel(),
      builder: (context, model, child) {
        final deviceSize = MediaQuery.of(context).size;
        return AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      height: deviceSize.height,
                      width: deviceSize.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Container(
                                // padding: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white.withOpacity(0.05),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            padding:const EdgeInsets.only(bottom: 20),
                                            margin: const EdgeInsets.only(right: 30),
                                            decoration:const BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.white,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                            child: const Text(
                                              'Log In',
                                              style: selectedAuthTextStyle,
                                            ))),
                                    Expanded(
                                        flex: 2,
                                        child: GestureDetector(
                                          onTap: () {
                                            model.navigateToSignUpView();
                                          },
                                          child: Container(
                                              padding: const EdgeInsets.only(bottom: 20),
                                              margin:const EdgeInsets.only(right: 30),
                                              child: Text(
                                                'Sign Up',
                                                style: unselectedAuthTextStyle,
                                              )),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SvgPicture.asset(
                              'assets/icons/login.svg',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Log In to Account',
                              style: titleLogInTextStyle,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const TextField(
                              style: txLogInTextStyle,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "EMAIL",
                                labelStyle: labelLoginTextStyle,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: borderLoginTxField,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: borderLoginTxField,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             TextField(
                              style: txLogInTextStyle,
                              obscureText: model.secureText,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "PASSWORD",
                                labelStyle: labelLoginTextStyle,
                                suffixIcon: IconButton(
                                  icon: Icon(model.secureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility),
                                  color: Colors.white,
                                  onPressed: () {
                                    model.passwordSecured();
                                  },
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: borderLoginTxField,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: borderLoginTxField,
                                ),
                              ),
                            ),
                            const Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Forgot Password?",
                                    style: txLogInTextStyle,
                                  ),
                                )),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                                width: deviceSize.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    model.navigateToHomeView();
                                  },
                                  child: const Text('Log In'),
                                  style: styleLogInButton,
                                )),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                child:  Container(
                                    margin:
                                    const EdgeInsets.only(left: 10.0, right: 15.0),
                                    child: const Divider(
                                      color: Color(0xffABB3BB),
                                      height: 50,
                                    )),
                              ),
                              const Text(
                                "Or",
                                style:  TextStyle(color: Color(0xffABB3BB)),
                              ),
                              Expanded(
                                child:  Container(
                                    margin:
                                    const EdgeInsets.only(left: 15.0, right: 10.0),
                                    child:const Divider(
                                      color: Color(0xffABB3BB),
                                      height: 50,
                                    )),
                              ),
                            ]),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                                width: deviceSize.width,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                  },
                                  icon: SvgPicture.asset(
                                    'assets/icons/google.svg',
                                  ),
                                  label: const Text('Log In with Google'),
                                  style: styleLogInGoogleButton,
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
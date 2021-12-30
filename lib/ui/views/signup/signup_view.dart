// ViewModel
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:test_technique_stacked/utilities/constant.dart';


import 'signup_viewModel.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder:()=> SignUpViewModel(),
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
                      decoration: const BoxDecoration(
                        color: Color(0xff134147),
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
                                        child: GestureDetector(
                                          onTap: () {
                                            model.navigateToLoginView();
                                          },
                                          child: Container(
                                              padding: const EdgeInsets.only(bottom: 20),
                                              margin: const EdgeInsets.only(right: 30),
                                              child: const Text(
                                                'Log In',
                                                style: selectedAuthTextStyle,
                                              )),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            padding: const EdgeInsets.only(bottom: 20),
                                            margin: const EdgeInsets.only(right: 120),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: Colors.white,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              'Sign Up',
                                              style: unselectedAuthTextStyle,
                                            ))),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SvgPicture.asset(
                              'assets/icons/signup.svg',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Create Account',
                              style: titleSignUpTextStyle,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const TextField(
                              style: txSignUpTextStyle,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "FirstName",
                                labelStyle: labelTxSignUpTextStyle,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              style: txSignUpTextStyle,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: labelTxSignUpTextStyle,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              style: txSignUpTextStyle,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "EMAIL",
                                labelStyle: labelTxSignUpTextStyle,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             TextField(
                              style: txSignUpTextStyle,
                              obscureText: model.secureText,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "PASSWORD",
                                labelStyle: labelTxSignUpTextStyle,
                                suffixIcon: IconButton(
                                  icon: Icon(model.secureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility),
                                  color: const Color(0xff707070),
                                  onPressed: () {
                                    model.passwordSecured();
                                  },
                                ),
                                focusedBorder:const OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                                enabledBorder:const OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             TextField(
                              style: txSignUpTextStyle,
                              obscureText:model.secureTextTwo,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                labelText: "CONFIRM PASSWORD",
                                labelStyle: labelTxSignUpTextStyle,
                                suffixIcon: IconButton(
                                  icon: Icon(model.secureTextTwo
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility),
                                  color: Color(0xff707070),
                                  onPressed: () {
                                    model.confirmPasswordSecured();
                                  },
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: borderTxField,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const[
                                  SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: null,
                                      side:  BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                  ),
                                   SizedBox(
                                    width: 10,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'I agree to ',
                                      style: txLogInTextStyle,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Terms & Conditions',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              width: deviceSize.width,
                              child: ElevatedButton(
                                onPressed: () {
                                },
                                child: const Text('Save'),
                                style: styleSignUpButton,
                              ),
                            ),
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
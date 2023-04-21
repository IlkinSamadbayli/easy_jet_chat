import 'package:easy_jet_chat/helper/helper_function.dart';
import 'package:easy_jet_chat/pages/auth/login_page.dart';
import 'package:easy_jet_chat/pages/home_page.dart';
import 'package:easy_jet_chat/service/auth_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../global_widgets/global_button.dart';
import '../../global_widgets/global_input.dart';
import '../../global_widgets/global_validators.dart';
import '../../provider/onchanged_provider.dart';
import '../../styles/styles/custom_text_style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthService authService = AuthService();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late FocusNode nameFocus;
  late FocusNode emailFocus;
  late FocusNode passwordFocus;
  final formKey = GlobalKey<FormState>();
  bool isCorrectName = false;
  bool isCorrectEmail = false;
  bool isCorrectPassword = false;
  bool _isLoading = false;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameFocus = FocusNode();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (emailFocus.hasFocus) {
            emailFocus.unfocus();
          } else if (passwordFocus.hasFocus) {
            passwordFocus.unfocus();
          }
        },
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Group", style: CustomTextStyle.largeBoldStyle),
                          const SizedBox(height: 12),
                          Text("Create your account",
                              style: CustomTextStyle.littleStyle),
                          const SizedBox(height: 24),
                          Padding(
                              padding: const EdgeInsets.all(24),
                              child: Image.asset(
                                'assets/images/register_asset.png',
                              )),
                          Consumer<OnchangedProvider>(
                            builder: (context, value, child) => GlobalInput(
                              prefixIcon: const Icon(Icons.person),
                              labelText: "Enter name",
                              isPassword: false,
                              isCorrect: isCorrectName,
                              onChanged: (p0) {
                                value.nameOnChanged(p0, isCorrectName);
                              },
                              validator: (p0) => nameValidator(p0),
                              controller: nameController,
                              textFocus: nameFocus,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Consumer<OnchangedProvider>(
                            builder: (context, value, child) => GlobalInput(
                              prefixIcon: const Icon(Icons.email),
                              labelText: "Enter email",
                              isPassword: false,
                              isCorrect: isCorrectEmail,
                              onChanged: (p0) {
                                value.emailOnChanged(p0, isCorrectEmail);
                              },
                              validator: (p0) => emailValidator(p0),
                              controller: emailController,
                              textFocus: emailFocus,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Consumer<OnchangedProvider>(
                            builder: (context, value, child) => GlobalInput(
                              prefixIcon: const Icon(Icons.lock),
                              labelText: "Enter password",
                              isPassword: isCorrectPassword,
                              isCorrect: true,
                              onChanged: (p0) {
                                value.passwordOnChanged(p0, isCorrectPassword);
                              },
                              validator: (p0) => passwordValidator(p0),
                              controller: passwordController,
                              textFocus: passwordFocus,
                            ),
                          ),
                          const SizedBox(height: 16),
                          GlobalButton(
                            text: "Register",
                            onTap: () {
                              register();
                            },
                          ),
                          const SizedBox(height: 16),
                          Text.rich(TextSpan(
                              text: "Already have an account?",
                              style: CustomTextStyle.tinyStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Login here",
                                  style: CustomTextStyle.tinyStyleUnderline,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => Get.to(() => const LoginPage()),
                                ),
                              ])),
                          const SizedBox(height: 40),
                        ]),
                  ),
                ),
              ),
      ),
    );
  }

  register() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .registerUserWithEmailandPassword(emailController.text,
              nameController.text, passwordController.text)
          .then((value)  async{
             if(value==true){
              Get.to(()=>const HomePage());
      await HelperFunction.savedLoginKey(true);
      await HelperFunction.savedEmailKey(emailController.text);
      await HelperFunction.savedNameKey(nameController.text);
             }else{
              Get.snackbar('Warning', "Something went wrong!");
              setState(() {
                _isLoading=false;
              });
             }
              });
    }
  }
}

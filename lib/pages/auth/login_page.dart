import 'package:easy_jet_chat/global_widgets/global_input.dart';
import 'package:easy_jet_chat/pages/auth/global_button.dart';
import 'package:easy_jet_chat/styles/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late FocusNode emailFocus;
  late FocusNode passwordFocus;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
      body: SingleChildScrollView(
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
                  Text("Log in to your account",
                      style: CustomTextStyle.littleStyle),
                  const SizedBox(height: 24),
                  Padding(
                      padding: const EdgeInsets.all(24),
                      child: Image.asset(
                        'assets/images/login_asset.png',
                      )),
                  GlobalInput(
                    prefixIcon: const Icon(Icons.email),
                    labelText: "Email",
                    isPassword: false,
                    isCorrect: true,
                    onChanged: (p0) {},
                    controller: emailController,
                    textFocus: emailFocus,
                  ),
                  const SizedBox(height: 16),
                  GlobalInput(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: "Password",
                    isPassword: true,
                    isCorrect: true,
                    onChanged: (p0) {},
                    controller: passwordController,
                    textFocus: passwordFocus,
                  ),
                  const SizedBox(height: 16),
                  GlobalButton(
                    text: "Login",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: CustomTextStyle.tinyStyle,
                      ),
                      Text(
                        "Register here.",
                        style: CustomTextStyle.tinyStyleUnderline,
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

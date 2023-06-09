import 'package:easy_jet_chat/helper/helper_function.dart';
import 'package:easy_jet_chat/pages/home_page.dart';
import 'package:easy_jet_chat/provider/onchanged_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'pages/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => OnchangedProvider())
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    getuserLoggedInStatus();
    super.initState();
  }

  getuserLoggedInStatus() async {
    await HelperFunction.getLoggedInStatus().then((value) => {
          if (value != null)
            {
              _isLoggedIn = value,
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: _isLoggedIn ? const HomePage() : const LoginPage(),
    );
  }
}

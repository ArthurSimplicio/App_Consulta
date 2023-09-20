import 'dart:async';

import 'package:consultas/pages/CadastroPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'MainPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 244, 221, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/hospital.png',
              height: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String cpf = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 350, child: SvgPicture.asset('images/login.svg')),
              TextField(
                onChanged: (text) {
                  cpf = text;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "CPF",
                    prefixIcon: Icon(
                      Icons.person,
                      size: 18,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(gapPadding: 12),
                    labelText: "Senha",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 18,
                    ),
                    suffixIcon: Icon(Icons.visibility)),
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(327, 50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(34))))),
                child: const Text('Login'),
                onPressed: () {
                  if (cpf == '000' && senha == '123') {
                    Navigator.of(context).pushReplacement(
                      PageTransition(
                          child: const MainPage(),
                          type: PageTransitionType.scale,
                          alignment: Alignment.topCenter,
                          duration: const Duration(milliseconds: 600),
                          reverseDuration: const Duration(milliseconds: 600)),
                    );
                  } else {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.bottomSlide,
                      title: "Erro",
                      desc:
                          'CPF ou senha inválidos! Se não fez seu cadastro, vamos fazê-lo agora!',
                      btnOkOnPress: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              child: const Cadastro(),
                              type: PageTransitionType.scale,
                              alignment: Alignment.bottomCenter,
                              duration: const Duration(milliseconds: 800),
                              reverseDuration:
                                  const Duration(milliseconds: 800),
                            ));
                      },
                      btnOkColor: const Color.fromARGB(255, 24, 247, 31),
                      btnCancelOnPress: () {},
                    ).show();
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Ainda não está cadstrado?'),
                  TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      PageTransition(
                        child: const Cadastro(),
                        type: PageTransitionType.scale,
                        alignment: Alignment.bottomCenter,
                        duration: const Duration(milliseconds: 800),
                        reverseDuration: const Duration(milliseconds: 800),
                      )),
                  child: const Text('Cadastre-se'))
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

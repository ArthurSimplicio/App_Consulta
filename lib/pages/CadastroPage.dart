// ignore_for_file: file_names
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: const Text("Cadastrar"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Text(
            'Dados Pessoais',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Digite o seu CPF:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'CPF',
                  filled: true,
                  fillColor: Colors.white),
              style: TextStyle(color: Colors.blue[500]),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Insira um email válido:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white),
              style: TextStyle(color: Colors.blue[500]),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Insira sua senha:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  border: OutlineInputBorder(),
                  hintText: 'Senha',
                  filled: true,
                  fillColor: Colors.white),
              style: TextStyle(color: Colors.blue[500]),
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
          ),
          const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Confirme sua senha:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  border: OutlineInputBorder(),
                  hintText: 'Confirmar senha',
                  filled: true,
                  fillColor: Colors.white),
              style: TextStyle(color: Colors.blue[500]),
              keyboardType: TextInputType.emailAddress,
              
              obscureText: true,
            ),
          ),
          ElevatedButton.icon(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 24, 247, 31)),
                minimumSize: MaterialStatePropertyAll(Size(327, 50)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(34)))),
              ),
              onPressed: () {
                AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    title: "Sucesso",
                    desc: 'Seu cadastro foi feito com sucesso!',
                    btnOkOnPress: () {
                      Navigator.of(context).pop();
                    },
                    ).show();
              },
              icon: const Icon(Icons.check),
              label: const Text('Cadastrar'))
        ]),
      ),
    );
  }
}

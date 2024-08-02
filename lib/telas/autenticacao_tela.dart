import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gymapp_live/_comum/minhas_cores.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                MinhasCores.azulTopoGradiente,
                MinhasCores.azulBaixoGradiente
              ])
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset('assets/logo.png', height: 128),
                      const Text(
                        "GymApp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 32.0,),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Email"),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Senha"),
                        ),
                        obscureText: true,
                      ),
                      Visibility(
                        visible: !queroEntrar,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Confirme Senha")
                              ),
                              obscureText: true,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Nome"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32.0,),
                      ElevatedButton(onPressed: (){}, child: Text((queroEntrar)? "Entrar" : "Cadastrar")),
                      const Divider(),
                      TextButton(onPressed: (){
                        setState(() {
                          queroEntrar = !queroEntrar;
                        });
                      }, 
                      child: Text((queroEntrar)?"Ainda não tem uma conta? Cadastra-se!" : 'Já tem uma conta? Entrar'))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
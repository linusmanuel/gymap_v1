import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gymapp_live/_comum/minhas_cores.dart';
import 'package:flutter_gymapp_live/componentes/decoracao_campo_autenticacao.dart';
import 'package:flutter_gymapp_live/servicos/autenticacao_servico.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>(); 

  TextEditingController _emailController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  AutenticacaoServico _autenServico = AutenticacaoServico();

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
              key: _formKey,
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
                        controller: _emailController,
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value == null) {
                            return "O e-mail não pode ser vazio";
                          }
                          if (value.length < 5) {
                            return "O e-mail é muito curto";
                          }
                          if(!value.contains("@")) {
                            return "O e-mail não é válido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8.0,),
                      TextFormField(
                        controller: _senhaController,
                        decoration: getAuthenticationInputDecoration("senha"),
                        validator: (String? value) {
                          if (value == null) {
                            return "A senha não pode ser vazio";
                          }
                          if (value.length < 5) {
                            return "A senha é muito curto";
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      const SizedBox(height: 8.0,),
                      Visibility(
                        visible: !queroEntrar,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthenticationInputDecoration("Confirme senha"),
                              validator: (String? value) {
                                if (value == null) {
                                  return "A confirmação de senha não pode ser vazio";
                                }
                                if (value.length < 5) {
                                  return "A confirmação de senha é muito curto";
                                }
                                return null;
                              },
                              obscureText: true,
                            ),
                            const SizedBox(height: 8.0,),
                            TextFormField(
                              controller: _nomeController,
                              decoration: getAuthenticationInputDecoration("nome"),
                              validator: (String? value) {
                                if (value == null) {
                                  return "O nome não pode ser vazio";
                                }
                                if (value.length < 5) {
                                  return "O nome é muito curto";
                                }
                                return null;
                              },
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(height: 32.0,),
                      ElevatedButton(onPressed: () {
                        botaoPrincipalClicado();
                      }, 
                      child: Text((queroEntrar)? "Entrar" : "Cadastrar")),
                      const Divider(),
                      TextButton(onPressed: () {
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

  botaoPrincipalClicado() {
    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;

    if(_formKey.currentState!.validate()) {
      if(queroEntrar) {
        print("Entrada validada");
        print("${_emailController.text}, ${_senhaController.text}, ${_nomeController.text}");
        _autenServico.cadastrarUsuario(nome: nome, senha: senha, email: email);
      } else {
        print("Cadastro validado");
      }
    } else {
      print("Form inválido");
    }
  }
}
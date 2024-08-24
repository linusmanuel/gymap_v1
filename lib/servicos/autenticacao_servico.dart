import 'package:firebase_auth/firebase_auth.dart';

class AutenticacaoServico {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  cadastrarUsuario({
    required String nome, 
    required String senha, 
    required String email
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword
      (
        email: 
        email, 
        password: 
        senha, 
      );
  
    await userCredential.user!.updateDisplayName(nome);
  } on FirebaseAuthException catch (e) {
      if(e.code == 'email-already-in-use') {
        print("Usuário já está cadastrado!");
      }
    }
  }
}
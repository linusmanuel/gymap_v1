import "package:flutter/material.dart";

class ExercicioTela extends StatelessWidget {
  const ExercicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Puxada Alta Promada - Treino A'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Foi clicado!');
        }, 
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar foto'),
            ),
            const Text(
              'Como fazer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              'Segura com as duas mãos na barra, mantem a coluna reta, e puxa'),
            Divider(),
            const Text(
              'Como estou me sentindo?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text('Hoje senti bastante ativação!')
          ],
        ),
      )
    );
  }
}
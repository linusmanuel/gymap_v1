import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_gymapp_live/modelos/Sentimento_modelo.dart";
import "package:flutter_gymapp_live/modelos/exercicio_modelo.dart";

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo (
    id: 'Ex001',
    nome: 'Remada Baixa Supinada',
    treino: 'Treino A',
    comoFazer: 'Segura a barra e puxa',
    urlImagem: ''
  );

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              exercicioModelo.nome,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
            ),
            Text(
              exercicioModelo.treino,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ]),
          backgroundColor: const Color(0xFF0A6D92),
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 72,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Foi clicado!');
        }, 
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Enviar foto'),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Tirar foto'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Como fazer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              'Segura com as duas mãos na barra, mantem a coluna reta, e puxa'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Como estou me sentindo?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
              SentimentoModelo sentimentoAgora = listaSentimentos[index];
              return ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(sentimentoAgora.sentimento), 
                subtitle: Text(sentimentoAgora.data),  
                leading: const Icon(Icons.double_arrow),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete, 
                    color: Colors.red,
                  ),
                  onPressed: () {
                    print("DELETAR ${sentimentoAgora.sentimento}");
                  },
                )
              );
            }))
          ],
        ),
      )
    );
  }
}
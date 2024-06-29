import "package:flutter/material.dart";
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
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
    SentimentoModelo(
      id: 'SE001', 
      sentimento: 'Senti pouca ativação hoje', 
      data: '2024-06-25'
    ),
    SentimentoModelo(
        id: 'SE002',
        sentimento: 'Senti alguma ativação hoje',
        data: '2024-06-26'),
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
      appBar: AppBar(title: Text("${exercicioModelo.nome} / ${exercicioModelo.treino}")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Foi clicado!');
        }, 
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
              SentimentoModelo sentimentoAgora = listaSentimentos[index];
              return Text(sentimentoAgora.sentimento);
            }))
          ],
        ),
      )
    );
  }
}
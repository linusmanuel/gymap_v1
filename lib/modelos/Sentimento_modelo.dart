import 'package:flutter/material.dart';

class SentimentoModelo {
    String id;
    String sentimento;
    String data;

  SentimentoModelo(
    {required this.id, required this.sentimento, required this.data});

  SentimentoModelo.fromMap(Map<String, dynamic> map)
  : id = map['id'],
  sentimento = map['sentimento'],
  data = map['data'];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sentimento": sentimento,
      "data": data,
    };
  }

}
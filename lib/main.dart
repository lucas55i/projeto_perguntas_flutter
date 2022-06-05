import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor preferida?',
      'Qual é o seu animal preferido?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 3'),
              )
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

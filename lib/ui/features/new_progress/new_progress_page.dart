import 'package:flutter/material.dart';

class NewProgressPage extends StatefulWidget {
  const NewProgressPage({super.key});

  @override
  State<NewProgressPage> createState() => _NewProgressPageState();
}

class _NewProgressPageState extends State<NewProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Progress Page")),
      body: SafeArea(
        child: Column(
          children: [
            Text("Input de texto pra comentário"),
            Text("Input de progresso (número/percentagem)"),
            Text("Botão de Sentimento"),
            Text("Botão de Add Progresso"),
          ],
        ),
      ),
    );
  }
}

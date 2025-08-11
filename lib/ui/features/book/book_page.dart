import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Page")),
      body: SafeArea(
        child: Column(
          children: [
            Icon(Icons.book, size: 250),
            Text("Nome do Livro"),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Botão de adicionar livro na estante"),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            Text("Feed de Comentários"),
            Column(
              children: List.generate(20, (index) {
                return Text("Publicação ${index + 1} do Feed");
              }),
            )
          ],
        ),
      ),
    );
  }
}

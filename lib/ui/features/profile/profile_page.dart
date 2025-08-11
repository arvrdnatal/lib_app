import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: SafeArea(
        child: Column(
          children: [
            Icon(Icons.account_circle, size: 100),
            Text("Nome no Perfil"),
            Text("@nomeDeUsuario"),
            Row(
              children: [
                Icon(Icons.feed),
                Icon(Icons.menu_book_sharp),
              ],
            )
          ],
        ),
      ),
    );
  }
}

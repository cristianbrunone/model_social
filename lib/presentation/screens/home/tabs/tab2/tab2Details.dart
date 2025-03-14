import 'package:flutter/material.dart';

class Tab2DetailScreen extends StatelessWidget {
  final String id;
  const Tab2DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhe Tab 1 - $id')),
      body: Center(child: Text('Conteúdo do Detalhe $id - Tab1')),
    );
  }
}

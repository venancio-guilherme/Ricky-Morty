// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:consumo_adviced_slip_dio/models/character.dart';
import 'package:consumo_adviced_slip_dio/controller/get_data_controller.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  var controller = GetDataController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumo de API por meio de DIO'),
      ),
      body: Column(
        children: [
          Expanded(
              child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return ListView.builder(
                itemCount: controller.jsonList == null ? 0 : 19,
                itemBuilder: (context, idx) {
                  var resultados =
                      Character.fromMap(controller.jsonList).results[idx];
                  var nome = resultados.name;
                  var image = resultados.image;
                  var species = resultados.species;
                  return CardCharacter(
                      image: image, nome: nome, species: species);
                },
              );
            },
          )),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    controller.getData();
                  },
                  child: const Text('Consumir API')))
        ],
      ),
    );
  }
}

class CardCharacter extends StatelessWidget {
  const CardCharacter({
    super.key,
    required this.image,
    required this.nome,
    required this.species,
  });

  final String image;
  final String nome;
  final String species;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(image),
        ),
        title: Text(nome),
        subtitle: Text(species),
      ),
    );
  }
}

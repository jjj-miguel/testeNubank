import 'package:flutter/material.dart';
import 'package:helloworld/conta/database.dart';

class Historicogenerator extends StatefulWidget {
  const Historicogenerator({super.key});

  @override
  State<Historicogenerator> createState() => _HistoricogeneratorState();
}

class _HistoricogeneratorState extends State<Historicogenerator> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    databaseInsert();
    return Container();
  }
}

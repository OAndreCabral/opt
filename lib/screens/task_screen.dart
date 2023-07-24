import 'package:flutter/material.dart';
import 'package:opt/components/backgroundcolor/background_full_blue.dart';
import 'package:opt/components/button/custom_button.dart';
import 'package:opt/components/header_texts/text_task_screen.dart';

import 'creating_screen.dart';


class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundFullBlue(),
        SingleChildScrollView(
          child: Column(
            children: [
              const TextTaskScreen(),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: CustomButton(
                  text: "Realizar consulta completa em pacientes pediátricos, gerando hipótese diagnóstica que culmine com terapêutica, SADTs ou encaminhamento",
                  route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1), textStyle: const TextStyle(color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: CustomButton(
                  text: "Realizar consulta completa em pacientes pediátricos, gerando hipótese diagnóstica que culmine com terapêutica, SADTs ou encaminhamento",
                  route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1), textStyle: const TextStyle(color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: CustomButton(
                  text: "Realizar consulta completa em pacientes pediátricos, gerando hipótese diagnóstica que culmine com terapêutica, SADTs ou encaminhamento",
                  route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1), textStyle: const TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
    ],);
  }
}

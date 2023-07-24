import 'package:flutter/material.dart';

import '../icon/arrow_icon.dart';

class TextTaskScreen extends StatefulWidget {
  const TextTaskScreen({Key? key}) : super(key: key);

  @override
  State<TextTaskScreen> createState() => _TextTaskScreenState();
}

class _TextTaskScreenState extends State<TextTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5,left: 28),
                child: ArrowIcon(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Tarefas",style: TextStyle(fontSize: 27, color: Color.fromRGBO(255, 255, 255, 1),decoration: TextDecoration.none),),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 25),
            child: Text("Prova: Saúde da Criança", style: TextStyle(fontSize: 15,color: Color.fromRGBO(129, 139, 152, 1),decoration: TextDecoration.none),),
          ),
        ],
      ),
    );
  }
}

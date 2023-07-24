import 'package:flutter/material.dart';

import '../icon/arrow_icon.dart';

class TextStudentsList extends StatefulWidget {
  const TextStudentsList({Key? key}) : super(key: key);

  @override
  State<TextStudentsList> createState() => _TextStudentsListState();
}

class _TextStudentsListState extends State<TextStudentsList> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
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
                padding: EdgeInsets.only(left: 25),
                child: Text("Lista de Alunos",style: TextStyle(fontSize: 27, color: Color.fromRGBO(255, 255, 255, 1),decoration: TextDecoration.none),),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5,),
            child: Text("Prova: Saúde da Criança", style: TextStyle(fontSize: 15,color: Color.fromRGBO(129, 139, 152, 1),decoration: TextDecoration.none),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 110),
            child: Text("9°Módulo",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15,
                  color: Color.fromRGBO(129, 139, 152, 1),
                  decoration: TextDecoration.none),),
          ),
        ],
      ),
    );
  }
}

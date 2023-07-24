import 'package:flutter/material.dart';

import '../icon/arrow_icon.dart';

class TextRegisterScreen extends StatefulWidget {
  const TextRegisterScreen({Key? key}) : super(key: key);

  @override
  State<TextRegisterScreen> createState() => _TextRegisterScreenState();
}

class _TextRegisterScreenState extends State<TextRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowIcon(),
              Text("Criando Conta",style: TextStyle(fontSize: 27, color: Color.fromRGBO(255, 255, 255, 1),decoration: TextDecoration.none),),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 84),
            child: Text("Cadastro", style: TextStyle(fontSize: 15,color: Color.fromRGBO(129, 139, 152, 1),decoration: TextDecoration.none),),
          ),
        ],
      ),
    );
  }
}

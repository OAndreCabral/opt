import 'package:flutter/material.dart';

import '../icon/arrow_icon.dart';

class TextInternsScreen extends StatefulWidget {
  const TextInternsScreen({Key? key}) : super(key: key);

  @override
  State<TextInternsScreen> createState() => _TextInternsScreenState();
}

class _TextInternsScreenState extends State<TextInternsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5,left: 35,top: 50),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15 ),
                child: ArrowIcon(),
              ),
              Text("Estágios",style: TextStyle(fontSize: 27, color: Color.fromRGBO(255, 255, 255, 1),decoration: TextDecoration.none),),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 100),
          child: Text("9°Módulo", style: TextStyle(fontSize: 15,color: Color.fromRGBO(129, 139, 152, 1),decoration: TextDecoration.none),),
        ),
      ],
    );
  }
}

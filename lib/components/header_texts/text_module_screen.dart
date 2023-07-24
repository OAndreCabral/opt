import 'package:flutter/material.dart';

class TextModuleScreen extends StatefulWidget {
  const TextModuleScreen({Key? key}) : super(key: key);

  @override
  State<TextModuleScreen> createState() => _TextModuleScreenState();
}

class _TextModuleScreenState extends State<TextModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50,left: 20),
      child: Column(
        children: [
          Text("Avaliações OPT",
            style: TextStyle(fontSize: 27,
                color: Color.fromRGBO(255, 255, 255, 1),
                decoration: TextDecoration.none),),
          Padding(
            padding: EdgeInsets.only(right: 190),
            child: Text("Home",
              style: TextStyle(fontSize: 15,
                  color: Color.fromRGBO(129, 139, 152, 1),
                  decoration: TextDecoration.none),),
          ),
        ],
      ),
    );
  }
}

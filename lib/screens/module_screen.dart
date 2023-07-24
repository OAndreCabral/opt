import 'package:flutter/material.dart';
import 'package:opt/screens/creating_screen.dart';

import '../components/backgroundcolor/background_color.dart';
import '../components/button/custom_button.dart';
import '../components/facespot/face_spot_small.dart';
import '../components/header_texts/text_module_screen.dart';

class Module extends StatefulWidget {
  const Module({Key? key}) : super(key: key);

  @override
  State<Module> createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        const BackgroundColor(
          colorcontainerup: Color.fromRGBO(255, 255, 255, 1),
          colorcontainerdown: Color.fromRGBO(23, 49, 84, 1),
          width: 320, height: 130,),
        const TextModuleScreen(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FaceSpotSmall(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //ALTERAR A ROTA DO NAVEGATOR ONDE ESTÁ CREATINGSCREEN
              CustomButton(text: "9°Modulo",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                textStyle: const TextStyle(color: Colors.black),),
              CustomButton(text: "10°Modulo",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                textStyle: const TextStyle(color: Colors.black),),
              CustomButton(text: "11°Modulo",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                textStyle: const TextStyle(color: Colors.black),),
              CustomButton(text: "12°Modulo",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                textStyle: const TextStyle(color: Colors.black),),
            ],
          ),
        ),],
    );
  }
}

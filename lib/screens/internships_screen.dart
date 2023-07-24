import 'package:flutter/material.dart';
import 'package:opt/components/backgroundcolor/background_color.dart';
import 'package:opt/components/icon/arrow_icon.dart';

import '../components/button/custom_button.dart';
import '../components/header_texts/text_interns_screen.dart';
import 'creating_screen.dart';

class Internships extends StatefulWidget {
  const Internships({Key? key}) : super(key: key);

  @override
  State<Internships> createState() => _InternshipsState();
}

class _InternshipsState extends State<Internships> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        const BackgroundColor(
          colorcontainerup: Color.fromRGBO(255, 255, 255, 1),
          colorcontainerdown: Color.fromRGBO(23, 49, 84, 1),
          width: 320, height: 130,),
        const TextInternsScreen(),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //ALTERAR A ROTA DO NAVEGATOR ONDE ESTÁ REGISTERSCREEN
              CustomButton(text: "Saúde da Criança",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1), textStyle: const TextStyle(color: Colors.black),),
              CustomButton(text: "Saúde da Mulher",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1), textStyle: const TextStyle(color: Colors.black),),
              CustomButton(text: "Saúde do Adulto",
                route: MaterialPageRoute(builder: (context) => const CreatingScreen()),
                backgroundColor: const Color.fromRGBO(23, 49, 84, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1), textStyle: const TextStyle(color: Colors.black),),
            ],
          ),
        ),],
    );
  }
}

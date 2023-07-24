import 'package:flutter/material.dart';

import '../components/backgroundcolor/background_color.dart';
import '../components/button/small_button.dart';
import '../components/form/component_form.dart';
import '../components/header_texts/text_create_screen.dart';

class CreatingScreen extends StatefulWidget {
  const CreatingScreen({Key? key}) : super(key: key);

  @override
  State<CreatingScreen> createState() => _CreatingScreenState();
}

class _CreatingScreenState extends State<CreatingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackgroundColor(
          colorcontainerup: Color.fromRGBO(255, 255, 255, 1),
          colorcontainerdown: Color.fromRGBO(23, 49, 84, 1),
          width: 320, height: 130,),
        Column(
          children: [
            TextRegisterScreen(),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: ComponentForm(),
            ),
            SmallButton(buttonText: "Cadastrar",textMessage: "Cadastrado com sucesso!"),
          ],)
      ],
    );
  }
}

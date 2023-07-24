import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  final String buttonText;
  final String textMessage;

  const SmallButton({Key? key, required this.buttonText, required this.textMessage}) : super(key: key);

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool _showMessage = false;

  void _showMessageAnimation() {
    setState(() {
      _showMessage = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showMessage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
            onPressed: () {
              _showMessageAnimation();
            },
            child: Text(widget.buttonText), // Usar o valor de buttonText passado como parâmetro
          ),
        ),
        const SizedBox(height: 1),
        AnimatedContainer(
          width: 250,
          duration: const Duration(milliseconds: 500), // Defina a duração da animação
          height: _showMessage ? 30 : 0,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(23, 49, 84, 1), // Cor de fundo da mensagem
            borderRadius: BorderRadius.circular(24),
          ),
          child: _showMessage
              ? Center(
                child: Text(
                widget.textMessage,
                style: const TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.none),
                ),
          )
              : null,
        ),
      ],
    );
  }
}
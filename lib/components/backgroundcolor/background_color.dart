import 'package:flutter/material.dart';

class BackgroundColor extends StatefulWidget {
  final Color colorcontainerup;
  final Color colorcontainerdown;
  final double width;
  final double height;

  const BackgroundColor({
    Key? key,
    required this.colorcontainerup,
    required this.colorcontainerdown,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<BackgroundColor> createState() => _BackgroundColorState();
}

class _BackgroundColorState extends State<BackgroundColor> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: widget.width,
          color: widget.colorcontainerup,
        ),
        Container(
          width: widget.width,
          height: widget.height,
          color: widget.colorcontainerdown,
        ),
      ],
    );
  }
}
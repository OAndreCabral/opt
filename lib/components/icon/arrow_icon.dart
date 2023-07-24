import 'package:flutter/material.dart';

class ArrowIcon extends StatefulWidget {
  const ArrowIcon({Key? key}) : super(key: key);

  @override
  State<ArrowIcon> createState() => _ArrowIconState();
}

class _ArrowIconState extends State<ArrowIcon> {
  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.arrow_back_ios,color: Colors.white,);
  }
}

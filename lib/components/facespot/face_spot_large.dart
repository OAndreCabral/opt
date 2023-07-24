import 'package:flutter/material.dart';

class FaceSpotLarge extends StatefulWidget {
  const FaceSpotLarge({Key? key}) : super(key: key);

  @override
  State<FaceSpotLarge> createState() => _FaceSpotLargeState();
}

class _FaceSpotLargeState extends State<FaceSpotLarge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue, // Cor de preenchimento do círculo
      ),
    );
  }
}

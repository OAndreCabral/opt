import 'package:flutter/material.dart';

class FaceSpotSmall extends StatefulWidget {
  const FaceSpotSmall({Key? key}) : super(key: key);

  @override
  State<FaceSpotSmall> createState() => _FaceSpotSmallState();
}

class _FaceSpotSmallState extends State<FaceSpotSmall> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45,right: 20),
      child: Container(
        width: 48,
        height: 48,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}

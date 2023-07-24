import 'package:flutter/material.dart';

class LogoutIcon extends StatefulWidget {
  const LogoutIcon({Key? key}) : super(key: key);

  @override
  State<LogoutIcon> createState() => _LogoutIconState();
}

class _LogoutIconState extends State<LogoutIcon> {
  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.login_outlined,color: Colors.white,);
  }
}

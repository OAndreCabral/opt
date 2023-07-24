import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Route<Object> route;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;

  const CustomButton({super.key,
    required this.text,
    required this.route,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 294,
          height: 144,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
            ),
            onPressed: () {
              Navigator.push(context, route);
            },
            child: Text(text,style: textStyle,),
          ),
        ),
      ),
    );
  }
}
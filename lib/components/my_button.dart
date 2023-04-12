
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final VoidCallback onPress;

  MyButton({Key? key,required this.title,this.buttonColor= const Color(0xffa5a5a5),required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 65,
            decoration: BoxDecoration(
                color: buttonColor,
                shape: BoxShape.circle
            ),
            child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),),
          ),
        ),
      ),
    );
  }
}
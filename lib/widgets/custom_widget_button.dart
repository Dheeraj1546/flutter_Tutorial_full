import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonname;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallbackAction? callBack;
  CustomButton({
    required this.buttonname,
    this.icon,
    this.bgColor,
    this.textStyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callBack!;
        },
        child: icon != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  Text(
                    buttonname,
                    style: textStyle,
                  )
                ],
              )
            : Text(
                buttonname,
                style: textStyle,
              ),
    style: ElevatedButton.styleFrom(
      primary: bgColor,
      shadowColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
          bottomLeft: Radius.circular(21),

        )
      )
    ),
    );
  }
}

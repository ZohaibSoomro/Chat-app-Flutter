import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final bool isDisabled;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.colored = true,
    this.isDisabled = false,
  });
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool colored;
  @override
  Widget build(BuildContext context) {
    final decoration = colored
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2.0, color: kContainerBorderColor),
            gradient: isDisabled
                ? null
                : const LinearGradient(
                    colors: [kButtonUpperColor, kButtonLowerColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
          )
        : BoxDecoration(
            color: isDisabled ? kEmptyFormColor : kBaseColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: isDisabled ? kContainerBorderColor : kButtonLowerColor,
                width: 2),
          );
    return Container(
      decoration: decoration,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: isDisabled ? kHintColor : Colors.white,
              ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: isDisabled ? kHintColor : Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

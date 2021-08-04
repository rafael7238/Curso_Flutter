import 'package:flutter/material.dart';

class CiclerButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color bordeColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  const CiclerButton(
      {Key key,
        this.label,
        this.backgroundColor,
        this.textColor = Colors.white,
        this.bordeColor,
        this.height = 55,
        this.width,
        this.icon,
        this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        borderRadius: BorderRadius.circular(40),
        color: backgroundColor == null
            ? Theme.of(context).accentColor
            : backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: bordeColor == null
                      ? null
                      : Border.all(color: bordeColor)),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon == null ? Container() : icon,
                  Container(
                    width: 7,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                        color: textColor, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

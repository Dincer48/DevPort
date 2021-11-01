import 'package:flutter/material.dart';
import 'package:wtechvideo/constants/theme.dart';


class DrawerTile extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool isSelected;
  final Color? iconColor;

  DrawerTile(
      {Key? key,
        this.title,
        this.icon,
        this.onTap,
        this.isSelected = false,
        this.iconColor = WtechTheme.text})  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin:const EdgeInsets.only(top: 6),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: isSelected
                        ? WtechTheme.black.withOpacity(0.07)
                        : Colors.transparent,
                    offset: const Offset(0, 0.5),
                    spreadRadius: 3,
                    blurRadius: 10)
              ],
              color: isSelected ? WtechTheme.white : WtechTheme.yellow,
              borderRadius:const BorderRadius.all(Radius.circular(54))),
          child: Row(
            children: [
              Icon(icon,
                  size: 18,
                  color: isSelected
                      ? WtechTheme.yellow
                      : WtechTheme.white.withOpacity(0.6)),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(title!,
                    style: TextStyle(
                        letterSpacing: 3,
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: isSelected
                            ? WtechTheme.primary
                            : WtechTheme.white.withOpacity(0.8))),
              )
            ],
          )),
    );
  }
}
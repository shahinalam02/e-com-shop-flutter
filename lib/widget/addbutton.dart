import 'package:flutter/material.dart';

class Addbutton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onTap;
  const Addbutton({super.key, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[400],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 45,
            ),
          ],
        ),
      ),
    );
  }
}

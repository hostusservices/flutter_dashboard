import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/style.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback onTap;
  const InfoCardSmall({
    Key? key,
    required this.title,
    required this.value,
    required this.topColor,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border:
                  Border.all(color: isActive ? active : lightGrey, width: 5)),
          child: Row(
            children: [
              CustomText(
                  text: title,
                  size: 24,
                  color: isActive ? active : lightGrey,
                  weight: FontWeight.w300)
            ],
          ),
        ),
      ),
    );
  }
}

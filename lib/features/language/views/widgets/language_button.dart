import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool isSelected;
  final void Function() onPressed;
  const LanguageButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: isSelected ? const Color(0xFF141414) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            100,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFF141414),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 30,
            child: VerticalDivider(
              color: isSelected ? Colors.white : Colors.black,
              thickness: 2,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                imagePath,
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

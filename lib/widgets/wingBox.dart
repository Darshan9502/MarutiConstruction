import 'package:flutter/material.dart';

class WingBox extends StatelessWidget {
  final String letter;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const WingBox({
    Key? key,
    required this.letter,
    required this.index,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.orange, width: 3),
              boxShadow: isSelected
                  ? [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ]
                  : [],
            ),
            child: Center(
              child: Text(
                letter,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Wing',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
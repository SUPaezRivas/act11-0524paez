import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  const EmoticonFace({
    Key? key,
    required this.emoticonFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff5a5a5a),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoticonFace,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}

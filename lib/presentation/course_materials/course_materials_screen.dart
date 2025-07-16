import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_assets.dart';

class CourseMaterialsScreen extends StatefulWidget {
  final String name;

  const CourseMaterialsScreen({super.key, required this.name});

  @override
  State<CourseMaterialsScreen> createState() => _CourseMaterialsScreenState();
}

class _CourseMaterialsScreenState extends State<CourseMaterialsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.name,
          style: TextStyle(
              color: Color(0xff0D121C),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Row with white background
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                _buildPointsBox("100", Color(0xffFF830C), AppIcons.star),
                const SizedBox(width: 12),
                _buildPointsBox("8", Color(0xff8444D9), AppIcons.lightning),
                const SizedBox(width: 12),
                _buildPointsBox("30%",  Color(0xff3A8FF7), AppIcons.progress),
              ],
            ),
          ),

          // Expanded list with background color
          Expanded(
            child: Container(
              color: const Color(0xffF3F4F6),
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) => ListTile(
                  title: Text('Item $index'),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

Widget _buildPointsBox(String points, Color color, String image) {
  return Expanded(
    child: Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        border: Border(
          top: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
          left: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
          right: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
          bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image, color: color,),
          const SizedBox(width: 6),
          Text(
            points,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    ),
  );
}


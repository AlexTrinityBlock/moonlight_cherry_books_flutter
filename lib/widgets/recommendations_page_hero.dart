import 'package:flutter/material.dart';

class RecommendationsPageHero extends StatelessWidget {
  const RecommendationsPageHero({super.key});

  @override
  Widget build(BuildContext context) {
    return // 頂部橫幅圖片
    Container(
      width: double.infinity,
      height: 250, // 可依需求調整高度
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Image.asset('assets/images/Hero.jpg', fit: BoxFit.cover),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:resume_portfolio_parvathi/core/theme.dart';
import 'package:resume_portfolio_parvathi/portfolio_home.dart';
import 'package:resume_portfolio_parvathi/widgets/app_background.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parvathi M | Flutter & Android Lead',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: AppBackground(child: PortfolioHome()),
    );
  }
}

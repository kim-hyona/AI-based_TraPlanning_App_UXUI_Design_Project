import 'package:flutter/material.dart';
import 'dart:async';
import 'plan_page.dart'; // PlanPage를 임포트합니다.

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _navigateToPlanPage();
  }

  _navigateToPlanPage() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PlanPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/loading.png', height: 200), // 로딩 이미지 경로
            SizedBox(height: 20),
            Text(
              '트래블이 최적의 플랜을 짜고 있어요! 조금만 기다려주세요.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

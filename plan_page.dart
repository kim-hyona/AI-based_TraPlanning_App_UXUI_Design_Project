import 'package:flutter/material.dart';
import 'new_home_page.dart'; // NewHomePage를 임포트합니다.

class PlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '유럽 7박8일 추천하는 여행 되세요!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '1일차',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Colors.lightBlue[50],
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('00:00 - 공항에 도착'),
                  Text('00:00 - 숙소에 체크인'),
                  Text('00:00 - 도시 탐방 시작'),
                  Text('00:00 - 점심 식사'),
                  Text('00:00 - 관광지 방문'),
                  Text('00:00 - 저녁 식사'),
                ],
              ),
            ),
            Text(
              '플랜이 마음에 들지 않으신가요?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // 다른 플랜 요청 로직 추가
                },
                child: Text(
                  '다른 플랜',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // 버튼 색상
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewHomePage()),
                  );
                },
                child: Text(
                  '선택 완료',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // 버튼 색상
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

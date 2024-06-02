import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('박민지님'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('박민지님'),
              accountEmail: Text('example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'), // 프로필 이미지 경로
              ),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('도쿄 일정'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('내 여행'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('내 지점'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('내 리뷰'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('내 여행기'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.book_online),
              title: Text('내 예약'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('쿠폰함'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('트리플 캐시'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.card_membership),
              title: Text('여행자 멤버십'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '어디로 떠나시나요?',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                _buildCategoryButton(Icons.flight, '항공권', Colors.blue),
                _buildCategoryButton(Icons.hotel, '숙소', Colors.green),
                _buildCategoryButton(Icons.train, '투어 티켓', Colors.orange),
                _buildCategoryButton(Icons.car_rental, '렌터카', Colors.red),
              ],
            ),
            SizedBox(height: 20),
            _buildInfoCard(
              'assets/images/info1.png',
              '친구 초대하여 데이터 무한 공짜\n프리한 자유 누리세요!',
              Colors.green,
            ),
            SizedBox(height: 10),
            _buildInfoCard(
              'assets/images/info2.png',
              '마카오 불가 캄펄션 with 썬플림\n숙소 20%, 투어티켓 50% 할인!',
              Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(IconData icon, String label, Color color) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }

  Widget _buildInfoCard(String imagePath, String text, Color color) {
    return Card(
      color: color.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

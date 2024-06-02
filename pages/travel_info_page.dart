import 'package:flutter/material.dart';
import 'loading_page.dart'; // LoadingPage를 임포트합니다.

class TravelInfoPage extends StatefulWidget {
  @override
  _TravelInfoPageState createState() => _TravelInfoPageState();
}

class _TravelInfoPageState extends State<TravelInfoPage> {
  String _selectedGroup = '';
  List<String> _selectedThemes = [];

  List<String> _groups = ['혼자', '2인', '3-4인', '5인 이상'];
  List<String> _themes = [
    '힐링',
    '휴양',
    '맛집투어',
    '쇼핑',
    '도시여행',
    '액티비티',
    '문화탐방',
    '자연',
    '역사',
    '숙소휴식',
    '사진촬영',
    '웰빙',
    '기타'
  ];

  void _onGroupSelected(String group) {
    setState(() {
      _selectedGroup = group;
    });
  }

  void _onThemeSelected(String theme) {
    setState(() {
      if (_selectedThemes.contains(theme)) {
        _selectedThemes.remove(theme);
      } else {
        _selectedThemes.add(theme);
      }
    });
  }

  void _completeSelection() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoadingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '여행 정보를 선택해주세요!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '인원',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8.0,
              children: _groups.map((group) {
                bool isSelected = _selectedGroup == group;
                return ChoiceChip(
                  label: Text(group),
                  selected: isSelected,
                  onSelected: (selected) {
                    _onGroupSelected(group);
                  },
                  selectedColor: Colors.teal,
                  backgroundColor: Colors.grey[200],
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '예산 금액을 적어주세요.',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '여행 테마',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8.0,
              children: _themes.map((theme) {
                bool isSelected = _selectedThemes.contains(theme);
                return ChoiceChip(
                  label: Text(theme),
                  selected: isSelected,
                  onSelected: (selected) {
                    _onThemeSelected(theme);
                  },
                  selectedColor: Colors.teal,
                  backgroundColor: Colors.grey[200],
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _completeSelection,
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



import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: '자격증 검색...',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200), // -> 후에 자격증 뉴스 들어갈 공백란
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150, // 고정된 버튼 너비
                height: 100, // 고정된 버튼 높이
                child: ElevatedButton(
                  onPressed: () {
                    // 첫 번째 버튼을 눌렀을 때의 동작
                  },
                  child: Text('커뮤니티'),
                ),
              ),
              SizedBox(
                width: 150, // 고정된 버튼 너비
                height: 100, // 고정된 버튼 높이
                child: ElevatedButton(
                  onPressed: () {
                    // 두 번째 버튼을 눌렀을 때의 동작
                  },
                  child: Text('자격증 뉴스'),
                ),
              ),
            ],
          ),
          SizedBox(height: 16), // 버튼과 아래의 공백
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150, // 고정된 버튼 너비
                height: 100, // 고정된 버튼 높이
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/certificate_main/certificate_list');
                  },
                  child: Text('자격증 목록'),
                ),
              ),
              SizedBox(
                width: 150, // 고정된 버튼 너비
                height: 100, // 고정된 버튼 높이
                child: ElevatedButton(
                  onPressed: () {
                    // 네 번째 버튼을 눌렀을 때의 동작
                  },
                  child: Text('자격증 추천'),
                ),
              ),
            ],
          ),
          SizedBox(height: 16), // 하단 공백
        ],
      ),
    );
  }
}

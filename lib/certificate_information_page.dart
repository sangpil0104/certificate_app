import 'package:flutter/material.dart';

class CertificateInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('뉴스 앱'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 검색 기능 구현
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '카테고리',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                NewsCategoryButton(categoryName: '전체'),
                NewsCategoryButton(categoryName: '정치'),
                NewsCategoryButton(categoryName: '경제'),
                NewsCategoryButton(categoryName: '사회'),
                NewsCategoryButton(categoryName: '문화'),
                NewsCategoryButton(categoryName: '스포츠'),
              ],
            ),
          ),
          Divider(), // 카테고리와 뉴스 목록 구분선
          Expanded(
            child: ListView.builder(
              itemCount: 20, // 가상의 뉴스 항목 개수
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('뉴스 제목 $index'),
                  subtitle: Text('뉴스 내용 $index'),
                  onTap: () {
                    // 뉴스 항목을 눌렀을 때의 동작
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewsCategoryButton extends StatelessWidget {
  final String categoryName;

  const NewsCategoryButton({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // 해당 카테고리의 뉴스 목록을 가져오는 동작
        },
        child: Text(categoryName),
      ),
    );
  }
}

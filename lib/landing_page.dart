import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('페이지 번호'), // -> 앱 제목(미정)
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // 점 세 개를 누르면 추가적인 동작을 수행할 수 있습니다.
            },
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          buildPage('assets/image1.jpg'),
          buildPage('assets/image2.jpg'),
          buildPage('assets/image3.jpg'),
          // 추가적인 페이지가 있다면 위와 같이 계속 추가할 수 있습니다.
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3, // 전체 페이지 수에 맞게 수정
                  (index) => GestureDetector(
                onTap: () {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _currentPage == 2
          ? Container(
        margin: const EdgeInsets.only(bottom: 50.0),
        child: ElevatedButton(
          onPressed: () {
            context.go('/certificate_main');
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.orange, // 버튼 배경색
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation: 5.0, // 그림자 효과
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Text(
              'START',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      )
          : null,
    );
  }

  Widget buildPage(String imagePath) {
    return Center(
      child: Image.asset(
        imagePath,
        height: 500.0, // 이미지 높이 조절
        width: 300.0,  // 이미지 너비 조절
      ),
    );
  }
}

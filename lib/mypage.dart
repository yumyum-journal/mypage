import 'package:flutter/material.dart';
import 'favoritepage.dart'; // 관심상품 페이지 import

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) { // 하트(관심상품) 아이콘 눌렀을 때
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoritePage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("MY PAGE", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(radius: 40, backgroundColor: Colors.grey[300]),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("닉네임", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("123456789@gmail.com", style: TextStyle(color: Colors.grey)),
                    ],
                  )
                ],
              ),
              Divider(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _iconButton(Icons.favorite_border, "관심상품"),
                  _iconButton(Icons.receipt_long, "거래내역"),
                  _iconButton(Icons.chat_bubble_outline, "문의"),
                ],
              ),
              Divider(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.bookmark_border),
                    SizedBox(width: 8),
                    Text("최근 본 상품", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(3, (_) => _productBox()),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("도움말", style: TextStyle(color: Colors.grey)),
                    Text("공지사항"),
                    Text("앱 버전"),
                    Text("서비스 이용 약관"),
                    Text("개인정보 처리방침"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 28),
        SizedBox(height: 6),
        Text(label),
      ],
    );
  }

  Widget _productBox() {
    return Container(
      width: 80,
      height: 100,
      color: Colors.grey[300],
    );
  }
}

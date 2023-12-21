import 'package:flutter/material.dart';

class MyBodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7_Z1SrkSFkO0bjbf5JyTnKma88X3hJiNYRQ&usqp=CAU',
                    fit: BoxFit.fill,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
                  ),
                  title: Text('개발자 양성 전문가'),
                  subtitle: Text('과제가 남았다'),
                  trailing: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {
                      // 햄버거 버튼을 눌렀을 때 수행할 동작
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0), // 여백 추가
          Card(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://www.upinews.kr/data/upi/image/2021/03/17/upi202103170110.680.0.jpg', // 두 번째 카드의 이미지 URL
                    fit: BoxFit.fill,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://example.com/second_avatar.jpg'), // 두 번째 카드의 아바타 이미지 URL
                  ),
                  title: Text('두 번째 화면'), // 두 번째 카드의 제목
                  subtitle: Text('두 번째 화면 설명'), // 두 번째 카드의 부제목
                  trailing: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {
                      // 햄버거 버튼을 눌렀을 때 수행할 동작
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
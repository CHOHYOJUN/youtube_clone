import 'package:flutter/material.dart';

class MyBodyContent extends StatelessWidget {
  const MyBodyContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView(
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
                  title: const Text('개발자 양성 전문가'),
                  subtitle: const Text('과제가 남았다'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 8.0),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          //
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0), // 여백 추가
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
                  title: const Text('두 번째 화면'), // 두 번째 카드의 제목
                  subtitle: const Text('두 번째 화면 설명'), // 두 번째 카드의 부제목
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 8.0),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          // 햄버거 버튼을 눌렀을 때 수행할 동작
                        },
                      ),
                    ],
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

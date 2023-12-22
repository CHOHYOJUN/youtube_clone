import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final List<String> chipLabels = ['전체', '게임', '뉴스', '실시간', '믹스', '액션'];

  MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120.0);

  List<Widget> createChips(List<String> labels) {
    return labels.asMap().entries.map((entry) {
      final index = entry.key;
      final label = entry.value;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Theme(
          data: ThemeData(
            chipTheme: ChipThemeData(
              backgroundColor: index == 0 ? Colors.white : Colors.black,
              selectedColor: Colors.white,
              labelStyle: TextStyle(color: index == 0 ? Colors.black : Colors.white),
            ),
          ),
          child: ChoiceChip(
            label: Text(label),
            selected: false,
            onSelected: (bool selected) {
              // 선택 상태 변경 로직을 여기에 추가하세요.
            },
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            // Expanded(
              Image.asset('lib/assets/youtube.png', width: 150,), // 이미지 파일 경로와 이름 설정
            // ),
          ],
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.abc_outlined),
            onPressed: () {
              // 버튼이 눌렸을 때 수행할 동작을 여기에 작성하세요.
            },
          ),
          IconButton(
            icon: const Icon(Icons.abc_sharp),
            onPressed: () {
              // 버튼이 눌렸을 때 수행할 동작을 여기에 작성하세요.
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // 첫 번째 Chip 위젯
                  const Chip(
                    labelPadding: EdgeInsets.all(0), // 라벨 패딩을 제거합니다.
                    label: SizedBox.shrink(),
                    avatar: Icon(Icons.explore), // '나침반' 아이콘을 사용합니다.
                  ),
                  ...createChips(chipLabels),
                ]
              ),
            ),
            // 다른 위젯 추가 가능
          ],
        ),
      ),
    );
  }
}

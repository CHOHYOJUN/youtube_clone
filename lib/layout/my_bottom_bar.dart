import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyBottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const MyBottomBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // 4개 이상일때 보이기
      showSelectedLabels: true, // 선택된 아이템의 라벨을 표시하지 않음
      showUnselectedLabels: true, // 선택되지 않은 아이템의 라벨을 표시하지 않음
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon:     Icon(Icons.electric_bolt),
          label: 'Shots',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline, size: 40),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          label: '구독',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_agenda_outlined),
          label: '보관함',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }

}
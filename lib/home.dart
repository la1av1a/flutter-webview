import 'package:flutter/material.dart';
import 'package:map_project2/kakaoMap_body.dart';
import 'package:provider/provider.dart';
import 'bottom_navigiation_provider.dart';
import 'count_home_widget.dart';
import 'list.dart';

class Home extends StatelessWidget {
  late BottomNavigationProvider _bottomNavigationProvider;

  Home({super.key});

  // 네비게이션바 UI Widget
  Widget _navigationBody() {
    // switch를 통해 currentPage에 따라 네비게이션을 구동시킨다.
    switch (_bottomNavigationProvider.currentPage) {
      case 0:
        return CountHomeWidget();

      case 1:
        return KakaoMapWidget();
    }
    return Container();
  }

  // 네비게이션바 Widget
  Widget _bottomNavigationBarWidget() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie")
      ],

      // 현재 페이지 : _bottomNavigationProvider의 currentPage
      currentIndex: _bottomNavigationProvider.currentPage,
      selectedItemColor: Colors.blue,

      // _bottomNavigationProvider에 updateCurrentPage를 통해 index를 전달
      onTap: (index) {
        _bottomNavigationProvider.updateCurrentPage(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    // Provider를 호출해 접근
    _bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
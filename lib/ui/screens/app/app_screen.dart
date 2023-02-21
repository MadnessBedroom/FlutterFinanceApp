import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_colors.dart';
import '../history/history_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../statistic/statistic_screen.dart';

class AppScreen extends HookWidget {
  const AppScreen({super.key});

  static const routeName = '/app';

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(initialPage: 0);
    final currentIndex = useState(0);

    void switchPage(int page) {
      currentIndex.value = page;
      controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          HistoryScreen(),
          StatisticScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => switchPage(value),
        backgroundColor: Colors.white,
        elevation: 0.0,
        currentIndex: currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary),
        selectedFontSize: 10.sp,
        unselectedFontSize: 10.sp,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_object),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

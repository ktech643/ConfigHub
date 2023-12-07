import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/views/home/home_page.dart';
import 'package:demo/views/reports/report_page.dart';
import 'package:demo/views/settings/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  int? b_index;

  BottomNavBar({super.key, this.b_index});
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _pages = [];
  @override
  void initState() {
    if (widget.b_index != null) {
      _currentIndex = widget.b_index!;
    }
    _pages.add(HomeScreen());
    _pages.add(ReportScreen());
    _pages.add(Container());
    _pages.add(SettingsScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        shape: const CircularNotchedRectangle(),
        elevation: 0,
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 1.28,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.05),
          ),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              backgroundColor: AppColors.primary.withOpacity(0.05),
              elevation: 0.0,
              selectedItemColor: AppColors.color7289DA,
              unselectedItemColor: AppColors.color777777,
              showUnselectedLabels: true,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    backgroundColor: AppColors.background,
                    icon: SvgPicture.asset(
                      'assets/home.svg',
                      width: 24.w,
                      color: _currentIndex == 0
                          ? AppColors.color7289DA
                          : AppColors.color777777,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    backgroundColor: AppColors.background,
                    icon: SvgPicture.asset('assets/reports.svg',
                        width: 24.w,
                        color: _currentIndex == 1
                            ? AppColors.color7289DA
                            : AppColors.color777777),
                    label: 'Reports'),
                BottomNavigationBarItem(
                    backgroundColor: AppColors.background,
                    icon: SvgPicture.asset('assets/history.svg',
                        width: 24.w,
                        color: _currentIndex == 2
                            ? AppColors.color7289DA
                            : AppColors.color777777),
                    label: 'History'),
                BottomNavigationBarItem(
                    backgroundColor: AppColors.background,
                    icon: SvgPicture.asset('assets/settings.svg',
                        width: 24.w,
                        color: _currentIndex == 3
                            ? AppColors.color7289DA
                            : AppColors.color777777),
                    label: 'Settings'),
              ]),
        ),
      ),
    );
  }
}

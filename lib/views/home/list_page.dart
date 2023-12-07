import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/views/home/user_channel_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';

class ListTabScreen extends StatefulWidget {
  final bool isUser;
  const ListTabScreen({Key? key, this.isUser = false}) : super(key: key);

  @override
  _ListTabScreenState createState() => _ListTabScreenState();
}

class _ListTabScreenState extends State<ListTabScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    if (!widget.isUser) {
      _selectedIndex = 1;
      _controller.index = 1;
    }
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  late TabController _controller;
  int _selectedIndex = 0;
  late List<String> settingItems;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.secondary,
        centerTitle: true,
        leading: InkWell(
          onTap: () => navigatorKey.currentState!.pop(),
          child: Center(
              child: Icon(
            Icons.arrow_back,
            color: AppColors.white,
            size: 25.sm,
          )),
        ),
        title: Text(
          'List',
          style: textStyle(16.sm, AppFontWeights.liteBold, AppColors.white),
        ),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: AppColors.color7289DA,
          unselectedLabelColor: AppColors.color7D7D7D,
          onTap: (index) {
            // Tab index when user select it, it start from zero
          },
          tabs: [
            Tab(
                child: Center(
              child: Text(
                'Users',
                style: textStyle(
                    16.sm,
                    AppFontWeights.liteBold,
                    _selectedIndex == 0
                        ? AppColors.white
                        : AppColors.color7D7D7D),
              ),
            )),
            Tab(
                child: Center(
              child: Text(
                'Channels',
                style: textStyle(
                    16.sm,
                    AppFontWeights.liteBold,
                    _selectedIndex == 1
                        ? AppColors.white
                        : AppColors.color7D7D7D),
              ),
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          UserChannelScreen(),
          UserChannelScreen(),
        ],
      ),
    );
  }
}

import 'package:demo/main.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/utilities/constants.dart';
import 'package:demo/views/home/preview_channal_page.dart';
import 'package:demo/views/home/widget/list_cell.dart';
import 'package:demo/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';
import '../../themes/style.dart';
import '../../themes/weights.dart';

class UserChannelScreen extends StatefulWidget {
  const UserChannelScreen({Key? key}) : super(key: key);

  @override
  _UserChannelScreenState createState() => _UserChannelScreenState();
}

class _UserChannelScreenState extends State<UserChannelScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  late List<String> settingItems;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List items = [
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'News Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Entertainment Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Entertainment Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
    {
      'title': 'AspectChannel',
      'subTitle': 'Sports Channel',
      'member': '203 members',
      'online': '70 online',
      'image': 'assets/profile.png',
      'ontap': () {
        navigatorKey.currentState!.push(MaterialPageRoute(
            builder: (context) => const PreviewChannelScreen()));
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.screenWidth,
      height: AppConstants.screenHeight,
      color: AppColors.background,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 37.h,
            ),
            SimpleTextField(
              hintText: 'Search for channel',
              labelText: 'Search for channel',
              hintColor: AppColors.white.withOpacity(0.5),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.white,
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                    padding: EdgeInsets.only(top: 8.h),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListCell(
                          data: items,
                          index: index,
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 16.h,
                        ),
                    itemCount: items.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

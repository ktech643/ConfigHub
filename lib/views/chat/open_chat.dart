import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:demo/themes/colors.dart';
import 'package:demo/themes/style.dart';
import 'package:demo/themes/weights.dart';
import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/chat/messageBarScreen.dart';
import 'package:demo/views/profile/profile_edit.dart';
import 'package:demo/views/public_profile/public_profile_join.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import "package:cached_network_image/cached_network_image.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OpenChatScreen extends StatefulWidget {
  final String title;
  OpenChatScreen({Key? key, this.title = ''}) : super(key: key);

  @override
  _OpenChatScreenState createState() => _OpenChatScreenState();
}

class _OpenChatScreenState extends State<OpenChatScreen> {
  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leadingWidth: 50.0,
        backgroundColor: Color(0xFF101316),
        elevation: 0.0,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.keyboard_backspace),
          ),
        ),
        title: InkWell(
          onTap: () {
            push(EditProfileScreen(), '');
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 43.sp,
                height: 43.sp,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Outlaw',
                      style: textStyle(
                          14.sm, AppFontWeights.semiBold, AppColors.white)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('Online',
                      style: textStyle(
                          10.sm, AppFontWeights.medium, Color(0xFFBABABA))),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: SvgPicture.asset('assets/dots.svg')),
        ],
      ),
      backgroundColor: AppColors.black,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF101316),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/chatbg.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day - 1),
                  ),
                  BubbleNormalImage(
                    id: 'id001',
                    image: _image(),
                    color: AppColors.primary,
                    // tail: true,
                    // delivered: true,
                  ),
                  msgsender(),
                  SizedBox(
                    height: 10.h,
                  ),
                  BubbleNormalAudio(
                    color: AppColors.primary,
                    duration: duration.inSeconds.toDouble(),
                    position: position.inSeconds.toDouble(),
                    isPlaying: isPlaying,
                    isLoading: isLoading,
                    isPause: isPause,
                    onSeekChanged: _changeSeek,
                    onPlayPauseButtonClick: _playAudio,
                    // sent: true,
                  ),
                  msgsender(),
                  SizedBox(
                    height: 10.h,
                  ),
                  BubbleNormal(
                    text: 'bubble normal with tail',
                    isSender: false,
                    color: Color(0xFF353535),
                    tail: true,
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                  msgreciver(),
                  SizedBox(
                    height: 10.h,
                  ),
                  BubbleNormal(
                    text: 'Well anything happen, Write to me',
                    // isSender: true,
                    color: AppColors.primary,
                    // tail: true,
                    // sent: true,
                  ),
                  msgsender(),
                  SizedBox(
                    height: 10.h,
                  ),
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day),
                  ),
                  BubbleNormal(
                    text: 'Hi, Have a question',
                    isSender: false,
                    color: Color(0xFF353535),
                    // tail: false,
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                  BubbleNormal(
                    text:
                        'When it will be possible to contact you to discuss the issue?',
                    isSender: false,
                    color: Color(0xFF353535),
                    // tail: false,
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                  msgreciver(),
                  SizedBox(
                    height: 10.h,
                  ),
                  BubbleNormal(
                    text: 'Not problems',
                    color: AppColors.primary,
                    // tail: false,
                    // sent: true,
                    // seen: true,
                    // delivered: true,
                  ),
                  BubbleNormal(
                    text: 'I’ll be free on friday',
                    color: AppColors.primary,
                    // tail: false,
                    // sent: true,
                    // seen: true,
                    // delivered: true,
                  ),
                  BubbleNormal(
                    text: 'Somewhere after 3 PM',
                    color: AppColors.primary,
                    // tail: false,
                    // sent: true,
                    // seen: true,
                    // delivered: true,
                  ),
                  msgsender(
                    img: 'assets/unchecktick.svg',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            MessageBarr(
              onSend: (_) => print(_),
              messageBarColor: Color((0xFF101316)),
              actions: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.add,
                      color: Color(0xFF32B5AD),
                      size: 24,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget msgreciver() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Text(
            "02:00 PM",
            style: TextStyle(
              color: Color(
                0xFF464646,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget msgsender({img}) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(img ?? 'assets/doubletick.svg'),
          SizedBox(
            width: 5,
          ),
          Text(
            "02:00 PM",
            style: TextStyle(
              color: Color(
                0xFF464646,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return Container(
      constraints: BoxConstraints(
        minHeight: 20.0,
        minWidth: 20.0,
      ),
      child: CachedNetworkImage(
        imageUrl: 'https://i.ibb.co/JCyT1kT/Asset-1.png',
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  void _changeSeek(double value) {
    setState(() {
      audioPlayer.seek(new Duration(seconds: value.toInt()));
    });
  }

  void _playAudio() async {
    final url =
        'https://file-examples.com/storage/fef1706276640fa2f99a5a4/2017/11/file_example_MP3_700KB.mp3';
    if (isPause) {
      await audioPlayer.resume();
      setState(() {
        isPlaying = true;
        isPause = false;
      });
    } else if (isPlaying) {
      await audioPlayer.pause();
      setState(() {
        isPlaying = false;
        isPause = true;
      });
    } else {
      setState(() {
        isLoading = true;
      });
      await audioPlayer.play(UrlSource(url));
      setState(() {
        isPlaying = true;
      });
    }

    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
        isLoading = false;
      });
    });
    audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });
    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
        duration = new Duration();
        position = new Duration();
      });
    });
  }
}

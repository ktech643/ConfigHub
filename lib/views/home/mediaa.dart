import 'package:flutter/material.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFf201F24),
          elevation: 0.0,
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Color(0xFF101316),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 8, left: 8),
                  child: Image(
                    image: AssetImage(
                      "assets/mediaaa.png",
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How to view media image ON YOUR DEVICE",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum is simply dummy text of the printing and industry.",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xFF201F24),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}

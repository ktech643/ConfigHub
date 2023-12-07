import 'package:demo/utilities/screen_navigator.dart';
import 'package:demo/views/home/drawer.dart';
import 'package:demo/views/user_end/hub_joined.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Hub_Joinedd_Screen extends StatefulWidget {
  Hub_Joinedd_Screen({super.key});

  @override
  State<Hub_Joinedd_Screen> createState() => _Hub_Join_ScreeddenState();
}

class _Hub_Join_ScreeddenState extends State<Hub_Joinedd_Screen> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Hub",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            onTap: (){
              push(Hub_Join_Screen(), '');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.done),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Color(0xff17181C),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 15),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            //  color: Colors.red,

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Hub Name",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/emojii.svg',
                                    width: 20,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              child: dividerWidgett(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: dividerWidgett(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff201F24),
    );
  }
}

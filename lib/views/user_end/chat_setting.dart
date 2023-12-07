import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatSettingScreen extends StatefulWidget {
  const ChatSettingScreen({super.key});

  @override
  State<ChatSettingScreen> createState() => _ChatSettingScreenState();
}

@override
class _ChatSettingScreenState extends State<ChatSettingScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF201F24),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 26,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Chat settings',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset('assets/signal.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2, color: Color(0xff32B5AD))),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                'assets/profile.png',
                              ),
                            )),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: InkWell(
                            child: SvgPicture.asset('assets/camera.svg'),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 220,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/edit.svg',
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                color: Color(0xff494949), fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hi, Sundar Pichai",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              "8.942 subscribers",
                              style: TextStyle(
                                color: Color(0xffBABABA),
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: Container(
                  // height: MediaQuery.of(context).size.height * 0.50,
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff17181C)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'The Nation’s',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w100),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' #1',
                                style: TextStyle(color: Color(0xff32B5AD)),
                              ),
                              TextSpan(
                                  text:
                                      ' Life & Business Strategist NYT Bestselling Author.'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 15, top: 25),
                          child: Text(
                            "NEW PODCAST with Ray Dalio",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Text("youtu.be/q3hdisdjB",
                            style: TextStyle(
                                color: Color(0xff32B5AD), fontSize: 16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Edit description",
                                    style: TextStyle(color: Color(0xff32B5AD)),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: listtileWidget(context: context),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: listtileWidget(
                  context: context,
                  txt: "Members   •   12.504",
                  leadingg: "assets/members.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: listtileWidget(
                  context: context,
                  txt: "Removed users   •   150",
                  leadingg: 'assets/removeduser.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xff32B5AD),
                      ),
                    ),
                    child: Text(
                      "Save changes",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listtileWidget({context, txt, leadingg, trilingg}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF17181C), borderRadius: BorderRadius.circular(15)),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: ListTile(
            leading: SvgPicture.asset(leadingg ?? 'assets/privacy.svg'),
            title: Text(
              txt ?? "Administrators   •   10",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white54,
              size: 15,
              weight: 0.50,
            )),
      ),
    );
  }
}

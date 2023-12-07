import 'package:demo/views/user_end/broadcast_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hub_Join_Screen extends StatefulWidget {
  Hub_Join_Screen({super.key});

  @override
  State<Hub_Join_Screen> createState() => _Hub_Join_ScreenState();
}

class _Hub_Join_ScreenState extends State<Hub_Join_Screen> {
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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.done),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BroadcastScreen(),
                  )),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Hub Types",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(10)),
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RadioListTile(
                                title: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Public Hub',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                          'Public hub can be found in search, anyone can join',
                                          style: TextStyle(
                                              color: Color(0xff9D9D9D),
                                              fontSize: 10)),
                                    )
                                  ],
                                ),
                                activeColor: Colors.white,
                                value: _selectedValue,
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue == value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(10)),
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RadioListTile(
                                tileColor: Colors.white,
                                title: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Private Hub',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                          'Public hub can be found in search, anyone can join',
                                          style: TextStyle(
                                              color: Color(0xff9D9D9D),
                                              fontSize: 10)),
                                    )
                                  ],
                                ),
                                activeColor: Colors.white,
                                value: 1,
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue != value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(10)),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  myWidget(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: myWidget(txt: "Private Hub"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'if you set a public link, other poeple will be able to find and join channel',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 216, 214, 214),
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        )
                        // RadioListTile(
                        //   activeColor: Colors.white,
                        //   title: Text('Option 2'),
                        //   value: 2,
                        //   groupValue: _selectedValue,
                        //   onChanged: (value) {
                        //     setState(() {
                        //       _selectedValue = value!;
                        //     });
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
      backgroundColor: Color(0xff201F24),
    );
  }

  Row myWidget({txt}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff201F24), width: 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                txt ?? 'Public Link',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff201F24), width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Test',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

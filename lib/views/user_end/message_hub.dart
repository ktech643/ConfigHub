import 'package:flutter/material.dart';

class BottommSheet extends StatelessWidget {
  var InkWell;
  var child;

  BottommSheet({
    super.key,
    this.InkWell,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
          ),
          builder: (BuildContext context) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    Container(
                      // height: Get.height,
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Image(
                                  width: 40,
                                  image: AssetImage('images/linee.png'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22, left: 22),
                            child: Row(
                              children: [
                                Text(
                                  'Edit Profession of Username',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Profession',
                                hintStyle: TextStyle(color: Colors.black),
                                labelText: 'Profession',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(05),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 22,
                              left: 22,
                              bottom: 15,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 45,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Color(0xff1B2870),
                                ),
                                child: Center(
                                  child: Text(
                                    'Save Changes',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

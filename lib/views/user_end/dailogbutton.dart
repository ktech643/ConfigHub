import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Alertdailogg extends StatelessWidget {
  const Alertdailogg({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      backgroundColor: Color(0xFF2C2F33),
      title: Column(
        children: [
          SvgPicture.asset('assets/remove_user_blue.svg'),
          SizedBox(
            height: 30,
          ),
          Text(
            'Back removed user',
            style: TextStyle(
                fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        child: Text(
          "Are you sure you want to restore this user's ability to rejoin this channel?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 30,
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.teal,
                  ),
                  height: 30,
                  width: 110,
                  child: Center(
                      child: Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

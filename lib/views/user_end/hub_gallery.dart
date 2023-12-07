import 'package:flutter/material.dart';

class Hub_Gallery_Screen extends StatelessWidget {
  const Hub_Gallery_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
        title: Text("Saved"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Color(0xFF101316)),
          child: GridView.builder(
            primary: true,
            padding: EdgeInsets.only(top: 30, bottom: 10),
            itemCount: 5,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.10),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 160,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/flower.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "World Hub File",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
      backgroundColor: Color(0xff201F24),
    );
  }
}

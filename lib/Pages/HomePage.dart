import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Pages/Calls_Page.dart';
import 'package:whatsapp_ui/Pages/Chats_Page.dart';
import 'package:whatsapp_ui/Pages/Setting_Page.dart';
import 'package:whatsapp_ui/Pages/Status_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List showWidget = [ChatsPage(), Status_Page(), Calls(), Settings()];

  @override
  void initState() {
    // TODO: implement initState
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: showWidget[index],
      bottomNavigationBar: SafeArea(
        child: Container(
          // margin: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            // color: backgroundColor2.withOpacity(0.8),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF16803A).withOpacity(0.9),
                  Color(0xFF209D4B)..withOpacity(0.9),
                ]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0x00ffffff),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[500],
            currentIndex: index,
            onTap: ((value) {
              setState(() {
                index = value;
              });
            }),
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  label: "Chats",
                  icon: Image.asset(
                    "assets/logos/chat.png",
                    width: 25,
                  )),
              BottomNavigationBarItem(
                label: "Status",
                icon: Image.asset(
                  "assets/logos/status.png",
                  width: 25,
                ),
              ),
              BottomNavigationBarItem(
                label: "Calls",
                icon: Image.asset(
                  "assets/logos/phone.png",
                  width: 25,
                ),
              ),
              BottomNavigationBarItem(
                label: "Setting",
                icon: Image.asset(
                  "assets/logos/setting.png",
                  width: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

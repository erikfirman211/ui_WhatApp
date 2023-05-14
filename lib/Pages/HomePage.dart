import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Pages/Chats_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List showWidget = [
    ChatsPage(),
    Center(child: Text("Status")),
    Center(child: Text("Calls")),
    Center(child: Text("Calls"))
  ];

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
      bottomNavigationBar: Container(
        // margin: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF16803A), Color(0xFF209D4B)],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
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
    );
  }
}

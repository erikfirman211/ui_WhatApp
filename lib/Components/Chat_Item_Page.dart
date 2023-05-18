import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://picsum.photos/id/107/200/200"),
          ),
        ),
        elevation: 10,
        title: Text("Name"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "assets/logos/video_call.png",
              width: 20,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              "assets/logos/phone.png",
              width: 20,
            ),
          ),
          Icon(Icons.more_vert_outlined)
        ],
      ),
      // body: Column(
      //   children: const [
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 10,
      //         vertical: 14,
      //       ),
      //       child: ListTile(
      //         leading: CircleAvatar(),
      //         title: Text("Name"),
      //         subtitle: Text("Ini subtitile"),
      //         trailing: Icon(Icons.more_vert_outlined),
      //         hoverColor: Colors.amber,
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

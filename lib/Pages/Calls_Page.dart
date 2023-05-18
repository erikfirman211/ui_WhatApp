import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({
    Key? key,
  }) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> with SingleTickerProviderStateMixin {
  late TabController TabC = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: false,
          title: Text(
            "Calls",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 1,
                ),
                label: Text("Search.."),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 100,
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://picsum.photos/id/107${index}/200/200"),
                  ),
                  title: Text("Name ${index}"),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        "assets/logos/video_call.png",
                        width: 12,
                        color: Colors.teal,
                      ),
                      Text("10.${index}0")
                    ],
                  ),
                  trailing: Image(
                    image: const AssetImage(
                      "assets/logos/video_call.png",
                    ),
                    width: 20,
                  ),
                );
              } else {
                return ListTile(
                  leading: CircleAvatar(),
                  title: Text("Name ${index}"),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        "assets/logos/phone.png",
                        width: 12,
                        color: Colors.red,
                      ),
                      Text("10.${index}0")
                    ],
                  ),
                  trailing: Image(
                    image: const AssetImage(
                      "assets/logos/phone.png",
                    ),
                    width: 20,
                    color: Colors.red,
                  ),
                );
              }
            },
          ),
        )
      ],
    );
  }
}

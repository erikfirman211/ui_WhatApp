import 'package:flutter/material.dart';

class Status_Page extends StatelessWidget {
  const Status_Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Status",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            autocorrect: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 7,
              ),
              label: Text("Search.."),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://picsum.photos/id/77/200/200"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Status",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Add To my Status",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/logos/pent.png",
                      height: 20,
                      color: Colors.grey[600],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Text(
            "Lasted Update",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return TextButton(
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    padding: EdgeInsets.all(0)),
                onPressed: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/id/77${index}/200/200",
                    ),
                  ),
                  title: Text("Name $index"),
                  subtitle: Text("12.00"),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

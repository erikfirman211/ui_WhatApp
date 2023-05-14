import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: [
              Image.asset(
                'assets/logos/pent.png',
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 65,
              // padding: EdgeInsets.all(20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/id/77${index}/200/200"),
                      ),
                    ),
                    padding: EdgeInsets.all(30),
                  );
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextField(
            autocorrect: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              prefixStyle: TextStyle(
                fontSize: 12,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 20,
              ),
              label: Text(
                "Search",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://picsum.photos/id/77${index}/200/200",
                  ),
                ),
                title: Text("Name - $index"),
                subtitle: Text("Haii nama ku erik"),
              );
            },
          ),
        ),
      ],
    );
  }
}

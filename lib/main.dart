import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      {
        "name": "vintage",
        "dp":
            "https://images.pexels.com/photos/27592130/pexels-photo-27592130/free-photo-of-a-man-pushing-a-cart-through-an-archway.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/27592130/pexels-photo-27592130/free-photo-of-a-man-pushing-a-cart-through-an-archway.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      },
      {
        "name": "treza",
        "dp":
            "https://images.pexels.com/photos/27540341/pexels-photo-27540341/free-photo-of-a-woman-in-a-white-dress-is-standing-next-to-a-horse.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/27540341/pexels-photo-27540341/free-photo-of-a-woman-in-a-white-dress-is-standing-next-to-a-horse.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      },
      {
        "name": "child",
        "dp":
            "https://images.pexels.com/photos/16879010/pexels-photo-16879010/free-photo-of-little-girl-in-traditional-clothing.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        "bg":
            "https://images.pexels.com/photos/16879010/pexels-photo-16879010/free-photo-of-little-girl-in-traditional-clothing.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      },
      {
        "name": "car",
        "dp":
            "https://images.pexels.com/photos/1805053/pexels-photo-1805053.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/1805053/pexels-photo-1805053.jpeg?auto=compress&cs=tinysrgb&w=600",
      },
      {
        "name": "bike",
        "dp":
            "https://images.pexels.com/photos/1715185/pexels-photo-1715185.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/1715185/pexels-photo-1715185.jpeg?auto=compress&cs=tinysrgb&w=600",
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(images[index]["dp"]),
                ),
              ),
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(images[index]["dp"]),
                    ),
                    title: Text(
                      images[index]["name"],
                      style: TextStyle(
                        color: Color(0xFFFFFEFE),
                      ),
                    ),
                    subtitle: Text(
                      "sponsered",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_vert, color: Colors.white),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white,
                              )),
                          child: Text(
                            "send message",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

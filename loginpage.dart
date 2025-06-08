import 'package:flutter/material.dart';

class Newapp extends StatelessWidget {
  const Newapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Seth Rollins",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 1),
            Row(
              children: [
                Text(
                  "Online",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                ),
                Center(
                  child: Column(
                    children: [Icon(Icons.online_prediction_sharp)],
                  ),
                ),
                Spacer(flex: 100),
                Icon(Icons.call),
                SizedBox(width: 20),
                Icon(Icons.video_call),
                SizedBox(width: 10),
                Icon(Icons.add_alert_outlined),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                      ),
                    ),
                    Text(
                      "Seth rollins",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 330,
                  color: Colors.white60,
                  child: Center(
                    child: Text(
                      "Now you people start to talk",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("Who are you"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("I am seth rollins"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("Give prove you are seth rollins"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("You mean i am fake"),
                  ],
                ), //seth rollins
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(children: [Text("yes")]),
                  ],
                ), //gojo
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Icon(Icons.picture_as_pdf_outlined),
          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
          Icon(Icons.sticky_note_2),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your messege",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          IconButton(onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
        ],
      ),
    );
  }
}

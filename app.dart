import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool istap = false;
  bool isexpend = false;
  final String descripton =
      "Seth Rollins is one of the most athletic and charismatic WWE Superstars of his generation."
      " Known for his high-flying style, technical skills, and intense promos, Rollins quickly rose to fame as a founding member of The Shield alongside Roman Reigns and Dean Ambrose (Jon Moxley). "
      "After turning on his teammates in 2014,"
      " he became one of WWE’s top villains and later evolved into a respected main-event star."
      "He is a multiple-time WWE Champion, Universal Champion, Intercontinental Champion, United States Champion, "
      "and Tag Team Champion. Rollins is also the 2019 Royal Rumble winner and known for cashing in his Money "
      "in the Bank contract at WrestleMania 31 in what fans call the ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SingleChildScrollView(
                child: Container(
                  width: 500,
                  color: Colors.purple,
                  child: Card(
                    shadowColor: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Seth Rollins",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Like:100",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              "Follower:20",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              "Followin:1k",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: () {
                                setState(() {
                                  istap = true;
                                });
                              },
                              child: Text(istap ? "Requsted" : "Follow"),
                            ),
                            SizedBox(width: 20),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz_outlined),
                            ),
                          ],
                        ),
                        Text(
                          "About me ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            descripton,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: 1.5,
                              wordSpacing: 2,
                            ),
                            maxLines: isexpend ? null : 2,
                            overflow:
                                isexpend
                                    ? TextOverflow.visible
                                    : TextOverflow.ellipsis,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isexpend = !isexpend;
                            });
                          },
                          child: Text(isexpend ? "less" : "More"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hlw1/loginpage.dart';

class Messener extends StatefulWidget {
  const Messener({super.key});

  @override
  State<Messener> createState() => _MessenerState();
}

class _MessenerState extends State<Messener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          children: [
            Row(
              children: [
                Text("Just for fun"),
                Spacer(flex: 30),
                Icon(Icons.edit),
              ],
            ),
            Container(
              height: 40,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Serch",

                  prefixIcon: Icon(Icons.search, color: Colors.white60),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: 600,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Newapp()),
                        );
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Gojo"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAS_hpGY22NhEiOcCvgBSM2uwnfwnhZMUQ&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Seth rollins"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVV4UTOVWptCUPNiDC6v9eBSdoqQxnVeMKBg&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Ronaldo"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXECX-DTbvlI2wj1gFEq7UcjQzOVRi1a4XKg&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Mr beast"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2x8_D9py1tduWYuRRHP5cu24IzKdDFwTgLA&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Kakasi"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgFueyYw4VfTp4DCZY3NWggeJCHuHsQQ0fog&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Itaci uchiha"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZQNshsAzBPfly6ORQ_svx8MU7hFXIi61zg&s",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Text("Aizen"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPcdEIhtHm9jCJBsNnUYjha056Z3JN7SySuA&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Jhone cina"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUk4qnUwgUL3rL2ahLNM8XNrFJhRhFpOt-Rg&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Roman reing"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8uhCDbHEL1cqL7BEtGmlezjxNGVakTi5t7w&s",
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("Undertaker"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

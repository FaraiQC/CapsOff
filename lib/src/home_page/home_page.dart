import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: Admin()));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Name Surname",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Hello John",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/Pictures/trophy.png",
                    width: 30,
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const ____),
                    // );
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Admin(),
        ],
      ),
    );
  }
}

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    int crossAxis = 2;
    if (widthOfScreen < 400.0) {
      crossAxis = 2;
    } else {
      crossAxis = 3;
    }

    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: const EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: crossAxis,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ____),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/quiz.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Quiz",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ___),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/homework.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Homework",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ___),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/tricks.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Tips & Tricks",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ___),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/competition.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Competitions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ___),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/leaderboard.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Leaderboard",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //print("Container clicked");
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/chat.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Chat",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

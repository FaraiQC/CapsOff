import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(home: Admin()));

class GroupSelection extends StatefulWidget {
  const GroupSelection({Key? key}) : super(key: key);

  @override
  GroupSelectionState createState() => GroupSelectionState();
}

class GroupSelectionState extends State<GroupSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          chatAppbarWidget(MediaQuery.of(context).size, context, "Mathematics"),
          const SizedBox(
            height: 20,
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
    int crossAxis = 1;
    if (widthOfScreen < 400.0) {
      crossAxis = 1;
    } else {
      crossAxis = 3;
    }

    return Flexible(
      child: GridView.count(
        childAspectRatio: 2.9,
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
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/trigonometry.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Trigonometry",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "20 Questions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
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
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/geometry.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Geometry",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "20 Questions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
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
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/calculus.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Calculus",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "20 Questions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
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
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/statistics.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Statistics",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "20 Questions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
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
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/probability.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Probability",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "20 Questions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
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
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/Pictures/finance.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Finantial Mathematics",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "20 Questions",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
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

Widget chatAppbarWidget(Size size, BuildContext context, String groupName) {
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 6),
    width: size.width,
    height: 100,
    color: Colors.indigo[900],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          groupName,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ],
    ),
  );
}

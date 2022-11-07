import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xff2c3334), Color(0xff6EA1A4)])),
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.1,
          ),
          Image.asset(
            "assets/Logo.png",
            height: screenHeight * 0.3,
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Text(
            "Lets Play",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight * 0.03,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.none,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  color: Color(0xffD9EAF7),
                ),
              ],
            ),
          ),
          Text(
            "And",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight * 0.03,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.none,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  color: Color(0xffD9EAF7),
                ),
              ],
            ),
          ),
          Text(
            "Count",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight * 0.03,
              fontStyle: FontStyle.italic,
              // fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  color: Color(0xffD9EAF7),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.15,
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: 35.0,
              maxHeight: 60.0,
            ),
            height: screenHeight * 0.07,
            width: screenWidth * 0.9,
            //color: Colors.white,
            decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      offset: Offset(0, 3),
                      blurRadius: 4,
                      spreadRadius: 4)
                ]),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "  No. of players:",
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * 0.011,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.04,
                  child: Card(
                    child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff08211A),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff08211A),
                              width: 2,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ]),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    _dialogBuilder(context);
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xff1A6350),
                    fixedSize: Size(screenWidth * 0.15, screenHeight * 0.01),
                    side: BorderSide(
                      width: 3,
                      color: Color(0xff1A6350),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Basic dialog title'),
        content: const Text('A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.'),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Disable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Enable'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

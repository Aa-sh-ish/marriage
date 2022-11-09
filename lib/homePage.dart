import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  //TextEditingController numberController = TextEditingController();
  int number = 0;
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var my_style = TextStyle(
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
    );

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffD9D9D9), Color(0xff6EA1A4)])),
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
          Text("Lets Play", style: my_style),
          Text("And", style: my_style),
          Text(
            "Count",
            style: my_style,
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
                        //  controller: numberController,
                        onChanged: (val) {
                          setState(() {
                            number = int.parse(val);
                          });
                        },
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
                // Text("$number_of_players"),
                OutlinedButton(
                  onPressed: () {
                    _dialogBuilder(context, number);
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

Future<void> _dialogBuilder(BuildContext context, numbercontroller) {
  var Sr_height = MediaQuery.of(context).size.height;
  var Sr_width = MediaQuery.of(context).size.width;
  // int num = int.parse("numbercontroller");
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Players Name',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: SizedBox(
        width: Sr_width * 0.6,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: numbercontroller,
          itemBuilder: (context, index) => Container(
            //  color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("Player No.  ${index + 1} :  "),
                    SizedBox(
                      height: Sr_height * 0.05,
                      width: Sr_width * 0.4,
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
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Sr_height * 0.03,
                )
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        OutlinedButton(
          onPressed: () {},
          child: Text(
            "Done",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0xff0EC9BE),
            fixedSize: Size(Sr_width * 0.15, Sr_width * 0.01),
            side: BorderSide(
              width: 3,
              color: Color(0xff0EC9BE),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    ),
  );
}

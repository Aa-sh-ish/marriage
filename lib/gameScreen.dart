import 'package:flutter/material.dart';

class GameScrreen extends StatefulWidget {
  const GameScrreen({super.key});

  @override
  State<GameScrreen> createState() => _GameScrreenState();
}

class _GameScrreenState extends State<GameScrreen> {
  @override
  Widget build(BuildContext context) {
    double Sr_height = MediaQuery.of(context).size.height;
    double Sr_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffD9D9D9), Color(0xff6EA1A4)])),
      child: Column(
        children: [
          Card(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => Container(
                //  color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text("Player name "),
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
        ],
      ),
    );
  }
}

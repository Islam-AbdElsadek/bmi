import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double height = 170;
  int weight = 70;
  int age = 20;
  String gender = "";
  Color? color_m = Color(0xff3a5a40);
  Color? color_f = Color(0xff3a5a40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff344e41),
      appBar: AppBar(
        backgroundColor: Color(0xff344e41),
        title: Center(
            child: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        gender = "male";

                        color_m = Colors.cyan;
                        color_f = Color(0xff3a5a40);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: color_m,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        gender = "female";

                        color_f = Colors.pink;

                        color_m = Color(0xff3a5a40);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: color_f,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff3a5a40),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 200,
              width: 400,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ]),
                    Slider(
                      value: height,
                      onChanged: (double x) {
                        setState(() {
                          height = x;
                        });
                      },
                      min: 50,
                      max: 250,
                      activeColor: Color(0xffa3b18a),
                      inactiveColor: Color(0xffdad7cd),
                    )
                  ]),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff3a5a40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 200,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "$weight",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              ),
                              Text(
                                "kg",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xffa3b18a),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xffa3b18a),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                    if (weight < 3) {
                                      weight = 3;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff3a5a40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 200,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xffa3b18a),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xffa3b18a),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                    if (age < 0) {
                                      age = 0;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () =>

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Result(),
                  ),
                ),


              child: Container(
                color: Color(0xffdad7cd),
                width: double.infinity,
                // height: 65,
                child: Center(
                    child: Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

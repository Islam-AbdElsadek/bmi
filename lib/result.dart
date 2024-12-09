import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff344e41),
      appBar: AppBar(
        backgroundColor: Color(0xff344e41),
        title: Center(child: Text('BMI Calculator      ',style: TextStyle(color: Colors.white),)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Your Result',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xff3a5a40),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Normal',style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),),
                    Text('22.3',style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
                    Text('You have a normal body weight.\n Good job',style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,),],
                    
              )),
            ),
          ),
          SizedBox(height: 20,),
          Container(
              color: Color(0xffdad7cd),
              width: double.infinity,
              height: 65,
              child: Center(
                  child: Text(
                "Re-Calculate",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
          
        ]
      ),
    );
  }
}
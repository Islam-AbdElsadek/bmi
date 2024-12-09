import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   Result({super.key, required this.result});

  String? text1;
  Color? text_color;
  String? text2;
  double? result;
  @override
  Widget build(BuildContext context) {

    if(result! < 18.5){
      text1 = 'Underweight';
      text_color = Colors.yellow;
      text2 = 'You have a lower than normal body weight.\nTry to eat a bit more.';
    }
    else if(result! >= 18.5 && result! <= 24.9){
      text1 = 'Normal';
      text_color = Colors.green;
      text2 = 'You have a normal body weight.\nGood job!'; 
    }
    else if(result! >= 25 && result! <= 29.9){
      text1 = 'Overweight';
      text_color = Colors.yellow;
      text2 = 'You have a higher than normal body weight.\nTry to eat a bit less.'; 
    }
    else if(result! >= 30 && result! <= 34.9){
      text1 = 'Obese';
      text_color = Colors.orange;
      text2 = 'You have a slightly higher than normal body weight.\nTry to eat a bit less and go to gym.'; 
    }
    else{
      text1 = 'Extremely obese';
      text_color = Colors.red;
      text2 = 'You have a very higher than normal body weight.\nTry to eat a bit less and go to gym.';
    }
    

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
                    Text('$text1',style: TextStyle(color: text_color,fontSize: 30,fontWeight: FontWeight.bold),),
                    Text('${result!.toStringAsFixed(1)}',style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('$text2',style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,),
                    ),],
                    
              )),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
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
          ),
          
        ]
      ),
    );
  }
}
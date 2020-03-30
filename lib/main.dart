import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Johny's Family",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        // border: Border.all(width: 10, color: Colors.red)
                      ),
                      child: Icon(
                        Icons.confirmation_number,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(height: 70),
              GridView.count(
                 shrinkWrap: true,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                physics: ScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  Container(
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)
                      ),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                   
                   
                    
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/calender.png',fit: BoxFit.cover,)),
                        
                        SizedBox(height: 5,),
                        Text('Calender', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        )),
                        SizedBox(height: 5,),
                        Text('March, Thursday', style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal
                        )),
                        SizedBox(height: 5,),
                        Text('3 Events', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ))
                      ],
                    )
                   
                  ),
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:Family/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeNotifier(isdarkTheme: true),
          )
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themep = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: themep.getThemeData,
        home: HomePage(),
      );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context);
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
                      ),
                    ],
                  ),
                  Switch(
                    activeColor: Colors.purple,
                      value: theme.isdarkTheme,
                      onChanged: (value) {
                        theme.setThemeData = value;
                      }),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(width: 10, color: Colors.red)),
                      child: Icon(
                        Icons.confirmation_number,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(height: 70),
              GridView.count(
                shrinkWrap: true,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                physics: ScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/calender.png',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Calender',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('March, Thursday',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('3 Events',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/gro.png',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Groceries',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Brocolli , Apple',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('4 Items',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/destination.png',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Location',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Lazy man going to artica',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('4 Places',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/bell.png',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Activity',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Jogging 10miles today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('2 KM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/to-do-list.png',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('To do',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Homework , Design',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('4 items',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black87.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/settings.png',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Settings',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Design settings',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('4 Files',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
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

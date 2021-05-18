import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            Container(
              width: 120.0,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/robot-2192617_640.png")),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Sociaworld",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 7,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Mail ile Giriş",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        width: double.infinity,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Facebook ile Giriş",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              height: 52,
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Gmail ile Giriş",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              height: 52,
                              decoration: BoxDecoration(
                                  color: Colors.red[600],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.purple[300], Colors.purple[100]],
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 70,
                height: 180.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

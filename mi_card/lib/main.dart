import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.5,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/fenrir.jpg"),
              ),
              Text(
                "Fenrir",
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Courgette',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100, // dark or deepness of the shade
                  letterSpacing: 2.5,  // 間距
                ),
              ),
              Divider(
                height: 30,  // Divider框的高
                thickness: 1,  // 線的粗細
                indent: 50,  // 分隔器前緣的空白空間量
                endIndent: 50,  // 分隔線後緣的空白空間量
                color: Colors.teal.shade100,
              ),
              Card(  // Container -> Card
                // color: Colors.white, // 預設是白色所以可以簡化
                // padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "+44 123 456 789",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                    ),
                  ),
                )
              ),
              Card(  // Container -> Card
                // color: Colors.white, // 預設是白色所以可以簡化
                // padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'fenrir@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


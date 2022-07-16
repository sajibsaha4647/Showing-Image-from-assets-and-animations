import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("this is text"),
          ),
          body: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(200), // Image radius
                    child: Image.asset(
                      "images/r.jpg",
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(200), // Image radius
                    child: Image.network(
                      "https://image.shutterstock.com/image-photo/caucasian-schoolgirl-wearing-face-mask-600w-1913189611.jpg",
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

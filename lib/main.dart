import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
double conHeight=100;
double conWeight=100;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MamunApps"),

      ),
      body: Center(
        child: Column(

          children: [
            InkWell(
              onTap: (){
                setState(() {
                  conHeight=300;
                  conWeight=300;
                });
              },
              onDoubleTap: (){
                setState(() {
                  conHeight=100;
                  conWeight=100;

                });
              },
              child: AnimatedContainer(
          height: conHeight,
                width: conWeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
                    ),fit: BoxFit.cover

                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(color: Colors.purple,width: 4)
                ), duration: Duration(milliseconds: 4000),

              ),
            ),

          ],
        ),
      ),
    );
  }
}

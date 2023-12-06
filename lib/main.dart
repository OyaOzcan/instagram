import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading :
            IconButton(onPressed:(){} ,icon : const Icon(CupertinoIcons.camera)),
        centerTitle: true,
        //title: Image.asset('assets/Instagram_Logo.png', scale: 2),
        title: Assets.instagramLogo.image(scale:1),
        actions:[
          IconButton(onPressed: () {}, icon: const Icon(Icons.tv)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined))],
      ),
          body: const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text('Stories'),
              //       TextButton.icon(
              //         icon:Icon(Icons.play_arrow), 
              //         label:Text('Watch all'),
              //         onPressed : () {},
              //         style: ButtonStyle(maximumSize: MaterialStatePropertyAll(Size.fromHeight(10))),
              // ),
                Row(
                  children: [
                    Icon(Icons.play_arrow),
                    Text('Watch All'),
                  ]
                )
                ],
              ),
              ),
            ],
          ),
      );
  }
}

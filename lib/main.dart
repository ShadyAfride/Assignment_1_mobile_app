import 'package:flutter/material.dart';
import 'package:untitled1/Screens/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white12),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      title: 'GrindX',
    );
  }
}


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ListView(
          children: [
            Text(
              "GrindX\nOne step ahead\nin the generation",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListPage()));
                    },
                    child: Text("Let's get started!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 55,vertical: 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                  )

                  ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  color: Colors.white,
                  elevation: 5,
                  child: InkWell(
                    onTap: (){
                      print("Loading...");
                    },
                  ),
                ),
              ],
            ),

            IconButton(
                onPressed: (){},
                icon: Icon(Icons.add)
            ),


          ],
        ),
      ),
    );
  }
}


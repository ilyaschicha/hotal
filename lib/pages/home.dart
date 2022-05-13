import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Image(image: AssetImage('assets/lines.png')),
                  ),
                ],
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/dash"),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
              color: Color(0xff7c94b6),
              image: DecorationImage(
                  image: AssetImage("assets/page1.png"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black12, BlendMode.darken))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 100, left: 20),
                child: Text("Feel Home\nIn A Dreamy\nPlace",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w200,
                        color: Colors.white)),
              )
            ],
          )),
    );
  }
}

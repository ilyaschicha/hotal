import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

const clr = Color.fromARGB(143, 0, 0, 0);

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 245, 252),
        body: SingleChildScrollView(
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.only(top: 150)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Center(
                  child: Text(
                    'Detail',
                    style: TextStyle(
                      fontSize: 30,
                      color: clr,
                      fontWeight: FontWeight.w500,
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

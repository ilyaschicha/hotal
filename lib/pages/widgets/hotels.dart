import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  final String title;
  final String image;
  final String location;
  const Hotels(
      {Key? key,
      required this.title,
      required this.image,
      required this.location})
      : super(key: key);

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.location,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                        Text(
                          widget.location,
                          style: const TextStyle(
                              fontSize: 14, color: Color.fromRGBO(0, 0, 0, 65)),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(3, 100, 176, 65),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.bookmark_border_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

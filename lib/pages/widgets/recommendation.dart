import 'package:flutter/material.dart';

class Recommendation extends StatefulWidget {
  final String name;
  final String location;
  final String image;

  const Recommendation(
      {Key? key,
      required this.name,
      required this.location,
      required this.image})
      : super(key: key);

  @override
  State<Recommendation> createState() => _RecommendationState();
}

const data = "TEST";

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 94,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 218, 217, 228).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 1),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 75,
                    width: 78,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          widget.location,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(143, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

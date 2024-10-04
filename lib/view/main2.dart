
import 'package:flutter/material.dart';

class PopularDoctor extends StatefulWidget {
  @override
  State<PopularDoctor> createState() => _PopularDoctorState();
}

class _PopularDoctorState extends State<PopularDoctor> {
  final List<String> Items = [
    'Dr.Truluck Nik',
    'Dr.Tranquilli',
    'Dr.shouey',
    'Dr.Helen',
  ];

  final List<String> images = [
    'asset/images/image4.png',
    'asset/images/image5.png',
    'asset/images/image4.png',
    'asset/images/image5.png',
  ];

  final List<String> Items2 = [
    'Medicine Specialist',
    'Patheology Specialist',
    'Medicine Specialist',
    'Patheology Specialist',
  ];

  final List<String> Items3 = [
    'Dr.Truluck Nik',
    'Dr.Tranquilli',
    'Dr.shouey',
    'Dr.Helen',
  ];

  final List<String> Images2 = [
    'asset/images/images6.png',
    'asset/images/images7.png',
    'asset/images/images8.png',
    'asset/images/images6.png',
  ];

  final List<String> Items4 = [
    'Medicine Specialist',
    'Patheology Specialist',
    'Medicine Specialist',
    'Patheology Specialist',
  ];
  final List<String> Rating = [
    '2.4',
    '2.8',
    '2.7',
    '3.0',
  ];
  final List<String> Rating2 = [
    '2.4',
    '2.8',
    '2.7',
    '3.0',
  ];

 
  final List<String> Review = [
    '(2901 views)',
    '(2346 views)',
    '(2109 views)',
    '(3165 views)',
  ];

  late List<bool> favoriteStatus;

  @override
  void initState() {
    super.initState();
    favoriteStatus = List<bool>.filled(Items3.length, false);
  }
  void _onDoctorTap(String doctorName) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back,color: Colors.grey,),
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.grey,
                iconSize: 30,
              ),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Doctor',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  scrollDirection:
                      Axis.horizontal, // Set horizontal scroll direction
                  itemCount: Items.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => _onDoctorTap(Items[index]),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(8),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset(
                              images[index],
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                Items[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text(
                              Items2[index],
                              style: TextStyle(color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: Items3.length,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Image.asset(
                                  Images2[index],
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Items3[index],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        Items4[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Row(
                                        children: List.generate(5, (index) {
                                          return Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          );
                                        }),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        favoriteStatus[index]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: favoriteStatus[index]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          favoriteStatus[index] =
                                              !favoriteStatus[index];
                                        });
                                      },
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                           Rating[index],
                                          style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                        ),
                                    SizedBox(width:5 ,),

                                    Text(
                                      Review[index],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                        );
                      }
                      )
              )
            ]
            )
        )
    );
  }
}
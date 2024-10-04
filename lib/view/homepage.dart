import 'package:flutter/material.dart';
import 'package:dresscart/widgets/imagecontainerwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool showImages = false; 
  int _selectedIndex = 0; 

 
  final List<String> imagePaths = [
    'asset/images/image (1).png',
    'asset/images/image (2).png',
    'asset/images/image (2).png',
    'asset/images/image (1).png',
    'asset/images/image (1).png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                  
                    Image.asset(
                      'asset/images/Big Banner.png',
                      width: double.infinity, 
                      height: MediaQuery.of(context).size.height * 0.6, 
                      fit: BoxFit.cover, 
                    ),

                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.4,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fashion',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          Text(
                            'Sale',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 2),
                              backgroundColor: Colors.redAccent, 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'Check',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New', // New Text
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "You've never seen it before", 
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              showImages = !showImages; 
                            });
                          },
                          child: Text(
                            showImages ? 'View Less' : 'View All',
                            style: TextStyle(fontSize: 16, color: Colors.blueAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                
                Container(
                  height: 150, 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, 
                    itemCount: showImages ? imagePaths.length : 3, 
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          ImageContainer(imagePath: imagePaths[index]),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.black, 
                                shape: BoxShape.circle, 
                              ),
                              child: Center(
                                child: Text(
                                  'New',
                                  style: TextStyle(
                                    color: Colors.white, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,size: 30,),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,size: 30,),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline,size: 30,),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,size: 30,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Set the currently selected index
        selectedItemColor: Colors.redAccent, // Selected item color
        unselectedItemColor: Colors.grey, // Unselected item color
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Handle item click
      ),
    );
  }
}

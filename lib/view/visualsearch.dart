import 'package:flutter/material.dart';

class Visualsearch extends StatefulWidget {
  const Visualsearch({super.key});

  @override
  State<Visualsearch> createState() => _VisualsearchState();
}

class _VisualsearchState extends State<Visualsearch> {
  void _takePhoto() {
  }

  void _uploadImage() {
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          'Visual Search',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Main Image
          Image.asset(
            'asset/images/image.png',
            fit: BoxFit.cover,
            width: double.infinity, 
            height: MediaQuery.of(context).size.height,
          ),
          // Overlay Content
          Container(
            color: Colors.black.withOpacity(0.1),
            width: double.infinity, 
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search for an outfit by  ',
                      
                      style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    Text('taking a photo or uploading',style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),),
                    Text('an image',style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 40),

                
                ElevatedButton(
                  onPressed: _takePhoto,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), 
                    ),
                  ),
                  child: Text(
                    'Take a Photo',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),

                SizedBox(height: 20), 

                ElevatedButton(
                  onPressed: _uploadImage,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    backgroundColor: Colors.transparent, 
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30), 
                    ),
                  ),
                  child: Text(
                    'Upload an Image',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

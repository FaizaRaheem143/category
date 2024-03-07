import 'package:flutter/material.dart';

class c2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spring HandBags'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Spring HandBags',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/hb1.jpeg', 'Pink Rose Hand Bag', 'Rs.4000 PKR'),
                _buildImageContainer(
                    'images/hb2.jpg', 'Floral Hand Bag', 'Rs.7000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/hb3.jpg', 'Tote Style Bag', 'Rs.4999 PKR'),
                _buildImageContainer(
                    'images/hb4.jpg', 'Galaxy Bags 3 in 1', 'Rs.6000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/hb5.jpg', 'Hand clutch', 'Rs.2200 PKR'),
                _buildImageContainer(
                    'images/hb6.jpg', 'GoldShine Hand Bag', 'Rs.5550 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/hb7.jpg', 'Catchy Hand Bag', 'Rs.6500 PKR'),
                _buildImageContainer(
                    'images/hb8.jpg', 'Solid Leather Bag', 'Rs.11000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/hb9.jpg', 'Luxury Purple Bag', 'Rs.7500 PKR'),
                _buildImageContainer(
                    'images/hb10.jpg', 'Classy Hand Bag', 'Rs.9000 PKR'),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildImageContainer(String imagePath, String text1, String text2) {
    return Column(
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          text1,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class c3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toys'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange[800],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Toys',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/toy1.jpg', 'T-Rex Walking Dino', 'Rs.4000 PKR'),
                _buildImageContainer(
                    'images/toy2.jpg', 'Race Car Toy', 'Rs.3000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/toy3.jpg', 'Doll House', 'Rs.8500 PKR'),
                _buildImageContainer(
                    'images/toy4.jpg', 'Omniverse Four Arms', 'Rs.4000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/toy5.jpg', 'Girls Toy Age 2-4', 'Rs.2200 PKR'),
                _buildImageContainer(
                    'images/toy6.jpg', 'Avengers Hulk', 'Rs.5000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/toy7.jpg', 'Baby Learning Piano', 'Rs.7500 PKR'),
                _buildImageContainer(
                    'images/toy8.jpg', 'Musical Bug Toy', 'Rs.11000 PKR'),
              ]),
              SizedBox(height: 20),
              _buildImageRow([
                _buildImageContainer(
                    'images/toy9.jpg', 'Puppy Robbot Toy', 'Rs.12000 PKR'),
                _buildImageContainer(
                    'images/toy10.jpg', 'Electric Cat', 'Rs.6000 PKR'),
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

import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  bool recommendProduct = false;
  int selectedRating = 0;

  Widget buildStar(int index) {
    return IconButton(
      icon: Icon(
        Icons.star,
        color: index <= selectedRating ? Colors.amber : Colors.grey.shade400,
        size: 40,
      ),
      onPressed: () {
        setState(() {
          selectedRating = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: primaryColor),
          onPressed: () {},
        ),
        title: Text(
          'Add Review',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_640.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LIPSY LONDON',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Sleeveless Ruffle',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text('Your overall rating of this product'),
              Row(
                children: List.generate(5, (index) => buildStar(index + 1)),
              ),
              SizedBox(height: 24),
              Text('Set a Title for your review'),
              TextField(
                maxLength: 100,
                decoration: InputDecoration(
                  hintText: 'Summarize review',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text('What did you like or dislike?'),
              TextField(
                maxLines: 4,
                maxLength: 3000,
                decoration: InputDecoration(
                  hintText: 'What should shoppers know before?',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Would you recommend this product?'),
                  Switch(
                    activeColor: primaryColor,
                    value: recommendProduct,
                    onChanged: (value) {
                      setState(() {
                        recommendProduct = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onPressed: () {
                    // Handle the submit action
                  },
                  child: Text(
                    'Submit Review',
                    style: TextStyle(fontSize: 16, color: Colors.white),
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

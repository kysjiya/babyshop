import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: defaultPadding),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                    child: BackButton(),
                  ),
                  Text(
                    "Shipping Information",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "A cool gray cap in soft corduroy. Watch me.' By buying cotton products from Lindex, you're supporting more responsibly...",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            Divider(height: 32),
            Text(
              'Details',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            _buildBulletPoint('Materials: 100% cotton, and lining Structured'),
            _buildBulletPoint('Adjustable cotton strap closure'),
            _buildBulletPoint('High quality embroidery stitching'),
            _buildBulletPoint('Head circumference: 21” - 24” / 54-62 cm'),
            _buildBulletPoint('Embroidery stitching'),
            _buildBulletPoint('One size fits most'),
            Divider(height: 32),
            Text(
              'Style Notes',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Style: Summer Hat\nDesign: Plain\nFabric: Jersey',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '•',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class ShippingInfo extends StatelessWidget {
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
              'Processing Time',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Orders are processed within 1-2 business days. Orders placed after 2 PM or on weekends and holidays will be processed the next business day.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Shipping Methods & Delivery Times',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            _buildBulletPoint('Standard Shipping: 5-7 business days'),
            _buildBulletPoint('Expedited Shipping: 2-3 business days'),
            _buildBulletPoint('Overnight Shipping: 1 business day'),
            
            SizedBox(height: 8),
            Text(
              'Please note that delivery times are estimates and may vary based on location and carrier availability.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Shipping Costs',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Shipping costs are calculated at checkout based on your location and selected shipping method. Free standard shipping is available for orders over 50.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Order Tracking',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Once your order has shipped, you will receive an email with a tracking number and link to track your shipment.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'International Shipping',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "We currently ship to select international destinations. International shipping times and costs vary by location. Customs fees and import duties may apply and are the responsibility of the recipient.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Missing or Delayed Shipments',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "If your order has not arrived within the expected timeframe, please contact our support team at [support@email.com] with your order number, and we will assist you in locating your shipment.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Returns & Exchanges',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "For information on returns and exchanges, please visit our [Returns & Exchanges] page.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "For any shipping-related inquiries, feel free to reach out to our customer service team at [support@email.com] or call us at (123) 456-7890.",
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

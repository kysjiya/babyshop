import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class SizeGuidePage extends StatefulWidget {
  @override
  _SizeGuidePageState createState() => _SizeGuidePageState();
}

class _SizeGuidePageState extends State<SizeGuidePage> {
  bool isInches = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
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
                    "Measurement Guide",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child:
              _sizeTable()
              ),
            SizedBox(height: 30),
            Divider(),
            _measurementGuide(),
          ],
        ),
      ),
    );
  }

  Widget _sizeTable() {
    return DataTable(
      columns: [
        DataColumn(label: Text('Size (Inch)')),
        DataColumn(label: Text('Bust (Inch)')),
        DataColumn(label: Text('Waist (Inch)')),
        DataColumn(label: Text('Hips (Inch)')),
      ],
      rows: [
        _buildRow('XS', '32', '24-25', '34-35'),
        _buildRow('S', '34', '26-27', '36-39'),
        _buildRow('M', '36', '28-29', '38-39'),
        _buildRow('L', '38-40', '31-33', '41-43'),
        _buildRow('XL', '42', '34', '44'),
      ],
    );
  }

  DataRow _buildRow(String size, String bust, String waist, String hips) {
    return DataRow(
      cells: [
        DataCell(Text(size)),
        DataCell(Text(bust)),
        DataCell(Text(waist)),
        DataCell(Text(hips)),
      ],
    );
  }

  Widget _measurementGuide() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          _guideText('Bust',
              'Measure under your arms at the fullest part of your bust. Be sure to go over your shoulder blades.'),
          SizedBox(height: 12),
          _guideText('Natural Waist',
              'Measure around the narrowest part of your waistline with one forefinger between your body and the measuring tape.'),
        ],
      ),
    );
  }

  Widget _guideText(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
        ),
      ],
    );
  }
}

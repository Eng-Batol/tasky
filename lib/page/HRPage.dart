import 'package:flutter/material.dart';

class HRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HR Services'),
        backgroundColor: Colors.blue[900], // Professional banking color
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildHrCard('Apply for a Loan'),
            _buildHrCard('Employee Vacation'),
            _buildHrCard('Apply for a Salary Certificate'),
            _buildHrCard('Apply for a Health Insurance Card'),
            _buildHrCard('Apply for an Employee ID'),
            _buildHrCard('Detailed Annual Evaluation'),
          ],
        ),
      ),
    );
  }

  Widget _buildHrCard(String title) {
    return Card(
      color: Colors.blue[50], // Light background for joyful look
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle denial action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Deny button color
                  ),
                  child: Text('Deny'),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle approval action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent, // Approve button color
                  ),
                  child: Text('Approve'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

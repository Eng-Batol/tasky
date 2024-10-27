// lib/pages/hr_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HRPage extends StatelessWidget {
  final List<Color> buttonColors = [
    Colors.blue[300]!, // Softer Deny button color
    Colors.blue[500]!, // Softer Approve button color
    Colors.blue[700]!, // Another blue shade for variations
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HR Services',
          style: GoogleFonts.lora(
            fontWeight: FontWeight.w600, // Lora font with weight 600
            color: Colors.white, // Set title font color to white
          ),
        ),
        backgroundColor: Colors.blue[900], // Keep AppBar color as blue
        iconTheme: IconThemeData(color: Colors.white), // Set back button color to white
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView for scrolling
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column( // Change from ListView to Column for scrollable cards
            children: [
              _buildHrCard('Apply for a Loan'),
              _buildHrCard('Employee Leaves'),
              _buildHrCard('Apply for a Salary Certificate'),
              _buildHrCard('Apply for a Health Insurance Card'),
              _buildHrCard('Apply for an Employee ID'),
              _buildHrCard('Detailed Annual Evaluation'),
            ],
          ),
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
              style: GoogleFonts.lora(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue[800], // Card title color
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
                    backgroundColor: buttonColors[0], // Softer Deny button color
                  ),
                  child: Text(
                    'Deny',
                    style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      color: Colors.white, // Button text color
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle approval action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[1], // Softer Approve button color
                  ),
                  child: Text(
                    'Approve',
                    style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      color: Colors.white, // Button text color
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
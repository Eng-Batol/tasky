// lib/pages/manager_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manager Services',
          style: GoogleFonts.lora(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildManagerServiceCard('Employee Leaves'),
            _buildManagerServiceCard('Annual Evaluation'),
            _buildManagerServiceCard('Monitor Tasks'),
          ],
        ),
      ),
    );
  }

  // Function to build Manager service cards
  Widget _buildManagerServiceCard(String title) {
    return Card(
      color: Colors.blue[50], // Light blue background for cards
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.lora(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue[800]),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle denial
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[400], // Light blue for denial
                  ),
                  child: Text('Deny'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle approval
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[600], // Darker blue for approval
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

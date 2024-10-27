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
            _buildManagerCard('Employee Leaves'),
            _buildManagerCard('Annual Evaluation'),
            _buildManagerCard('Monitor Tasks'),
          ],
        ),
      ),
    );
  }

  Widget _buildManagerCard(String title) {
    return Card(
      color: Colors.blue[50],
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
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the respective page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),
                  child: Text(
                    'View',
                    style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
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

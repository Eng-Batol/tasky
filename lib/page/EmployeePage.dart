// lib/pages/employee_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employee Services',
          style: GoogleFonts.lora(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildEmployeeServiceCard('Annual Leave'),
            _buildEmployeeServiceCard('Sick Leave'),
            _buildEmployeeServiceCard('Maternity Leave'),
            _buildEmployeeServiceCard('Paternity Leave'),
            _buildEmployeeServiceCard('Marriage Leave'),
            _buildEmployeeServiceCard('Holiday Leave'),
            _buildEmployeeServiceCard('Emergency Leave'),
            _buildEmployeeServiceCard('Unpaid Leave'),
            _buildEmployeeServiceCard('Apply for a Loan'),
            _buildEmployeeServiceCard('Salary Certificate'),
            _buildEmployeeServiceCard('Insurance Card'),
            _buildEmployeeServiceCard('Apply for Employee ID'),
            _buildEmployeeServiceCard('Update Data'),
            _buildEmployeeServiceCard('Attendance and Departure'),
            _buildEmployeeServiceCard('Employee Tasks'),
            _buildEmployeeServiceCard('HR Alerts'),
            _buildEmployeeServiceCard('Employee Evaluation Score'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Attendance'),
          BottomNavigationBarItem(icon: Icon(Icons.beach_access), label: 'Leave'), // Updated icon
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onTap: (index) {
          // Handle navigation based on selected index
          switch (index) {
            case 0:
              // Navigate to Attendance page
              break;
            case 1:
              // Navigate to Leave page
              break;
            case 2:
              // Navigate to More options page
              break;
          }
        },
      ),
    );
  }

  // Function to build employee service cards
  Widget _buildEmployeeServiceCard(String title) {
    return Card(
      color: Colors.blue[50], // Light blue background for cards
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: GoogleFonts.lora(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue[800]), // Dark blue for text
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/page/LeavePage.dart';

class EmployeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employee Services',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
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
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: 'Attendance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.beach_access), label: 'Leave'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              // Handle Attendance navigation
              break;
            case 1:
              // Navigate to LeavePage when 'Leave' is selected
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LeavePage()),
              );
              break;
            case 2:
              // Handle More options navigation
              break;
          }
        },
      ),
    );
  }

  Widget _buildEmployeeServiceCard(String title) {
    return Card(
      color: Colors.blue[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          title,
          style: GoogleFonts.lora(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.blue[800]),
        ),
      ),
    );
  }
}

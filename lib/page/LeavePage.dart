import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeavePage extends StatefulWidget {
  @override
  _LeavePageState createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  final List<String> leaveOptions = [
    'Annual Leave',
    'Sick Leave',
    'Maternity Leave',
    'Paternity Leave',
    'Marriage Leave',
    'Holiday Leave',
    'Emergency Leave',
    'Unpaid Leave',
  ];

  final List<int> leaveDays = List<int>.generate(
      30, (index) => index + 1); // Generates days from 1 to 30

  String? selectedLeave; // Variable to store selected leave
  int? selectedDays; // Variable to store selected leave duration in days

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose a Leave Type',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Leave type dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Select Leave Type",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                ),
                hint: Text(
                  "Choose your leave from here",
                  style: GoogleFonts.lora(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                ),
                value: selectedLeave,
                items: leaveOptions.map((leave) {
                  return DropdownMenuItem(
                    value: leave,
                    child: Text(
                      leave,
                      style: GoogleFonts.lora(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedLeave = value;
                  });
                },
                icon: Icon(Icons.arrow_drop_down, color: Colors.blue[900]),
              ),
              SizedBox(height: 16), // Space between dropdowns

              // Duration dropdown
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  labelText: "Select Duration (Days)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                ),
                hint: Text(
                  "Choose the number of days",
                  style: GoogleFonts.lora(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600]),
                ),
                value: selectedDays,
                items: leaveDays.map((days) {
                  return DropdownMenuItem(
                    value: days,
                    child: Text(
                      '$days day${days > 1 ? 's' : ''}', // Pluralize "day" if needed
                      style: GoogleFonts.lora(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDays = value;
                  });
                },
                icon: Icon(Icons.arrow_drop_down, color: Colors.blue[900]),
              ),
              SizedBox(height: 16), // Additional space if needed for layout

              // Submit button
              ElevatedButton(
                onPressed: () {
                  if (selectedLeave != null && selectedDays != null) {
                    _showConfirmationDialog(
                        context, selectedLeave!, selectedDays!);
                  } else {
                    // Show error message if selection is incomplete
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              "Please select both leave type and duration.")),
                    );
                  }
                },
                child: Text("Apply for Leave"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: GoogleFonts.lora(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog(
      BuildContext context, String selectedLeave, int selectedDays) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Selection"),
          content: Text(
              "Are you sure you want to apply for $selectedLeave for $selectedDays day(s)?"),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text("Confirm"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pop(context,
                    selectedLeave); // Return to EmployeePage with leave type
              },
            ),
          ],
        );
      },
    );
  }
}

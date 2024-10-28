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

  String? selectedLeave; // Variable to store selected leave

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
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Select Leave Type",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
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
                  if (value != null) {
                    // Show confirmation dialog
                    _showConfirmationDialog(context, value);
                  }
                },
                icon: Icon(Icons.arrow_drop_down, color: Colors.blue[900]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, String selectedLeave) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Selection"),
          content: Text("Are you sure you want to apply for $selectedLeave?"),
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
                    selectedLeave); // Return to EmployeePage with selected leave
              },
            ),
          ],
        );
      },
    );
  }
}

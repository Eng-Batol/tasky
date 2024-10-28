import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyForServicesPage extends StatefulWidget {
  @override
  _ApplyForServicesPageState createState() => _ApplyForServicesPageState();
}

class _ApplyForServicesPageState extends State<ApplyForServicesPage> {
  String? selectedService; // Variable to hold selected service

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Apply for Services',
          style: GoogleFonts.lora(
              fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        // Center the body content
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the column
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton<String>(
                hint: Text("Choose a Service"),
                value: selectedService,
                items: <String>[
                  'Apply for a Loan',
                  'Salary Certificate',
                  'Insurance Card',
                  'Apply for Employee ID',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedService = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle application logic
                  // Example: print(selectedService);
                  if (selectedService != null) {
                    // You can add your application logic here
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Application Submitted'),
                        content: Text('You applied for: $selectedService'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Show a message if no service is selected
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please select a service.'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900], // Button color
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(color: Colors.white), // Button text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

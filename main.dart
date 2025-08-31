import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center elements horizontally
          children: [
            // Profile Picture in a Circle
            CircleAvatar(
              radius: 50, // Circular image size
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Replace with your image path
            ),
            const SizedBox(height: 16), // Space between image and text

            // Name and Roll No. inside boxes
            _buildInfoBox('Name: M.Shravani', Colors.blue.shade100),
            const SizedBox(height: 16),
            _buildInfoBox('Roll No: 23D41A05E3', Colors.blue.shade100),
            const SizedBox(height: 32), // Space between profile info and stats

            // Stats in two rows with fixed-size boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the stats horizontally
              children: [
                _buildInfoBox("Attendance: 99%", Colors.green.shade100),
                const SizedBox(width: 20), // Space between the boxes
                _buildInfoBox("Syllabus: 45%", Colors.orange.shade100),
              ],
            ),
            const SizedBox(height: 16), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the stats horizontally
              children: [
                _buildInfoBox("Fee: Paid", Colors.blue.shade100),
                const SizedBox(width: 20), // Space between the boxes
                _buildInfoBox("CGPA: 9.0", Colors.purple.shade100),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create a fixed-size box for each label (name, roll number, stats)
  Widget _buildInfoBox(String label, Color color) {
    return Container(
      width: 300, // Set fixed width for the box
      height: 60, // Set fixed height for the box
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}




          
   
     
   


     






     
      
     


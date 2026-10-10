import 'package:flutter/material.dart';

void main() {
  runApp(const BloodRequestsApp());
}

class BloodRequestsApp extends StatelessWidget {
  const BloodRequestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Requests',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF6F8FB),
      ),
      home: const BloodRequestsScreen(),
    );
  }
}

class BloodRequestsScreen extends StatelessWidget {
  const BloodRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Blood Requests',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF172B4D),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: const [
          BloodRequestCard(group: 'O-', units: 3),
          SizedBox(height: 16),
          BloodRequestCard(group: 'O+', units: 2),
        ],
      ),
    );
  }
}

class BloodRequestCard extends StatelessWidget {
  final String group;
  final int units;

  const BloodRequestCard({super.key, required this.group, required this.units});

  @override
  Widget build(BuildContext context) {
    const navy = Color(0xFF172B4D);
    const red = Color(0xFFE53945);
    const grey = Color(0xFF718096);

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE4E9F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'URGENT',
                  style: TextStyle(
                    color: red,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(Icons.water_drop, color: red, size: 20),
              const SizedBox(width: 5),
              Text(
                '$units Units',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            '$group Blood Needed',
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: navy,
            ),
          ),
          const SizedBox(height: 12),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined, color: grey, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Khulna City Medical College Hospital, KDA Avenue',
                  style: TextStyle(color: grey, height: 1.5),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: navy,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('View Details'),
            ),
          ),
        ],
      ),
    );
  }
}

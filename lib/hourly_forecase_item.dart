import 'package:flutter/material.dart';

class HourlyForecastIem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;
  const HourlyForecastIem({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            time,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            maxLines: 1,
          ),
          const SizedBox(
            height: 8,
          ),
          Icon(
            icon,
            size: 32,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            temperature,
          ),
        ]),
      ),
    );
  }
}

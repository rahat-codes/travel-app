import 'package:flutter/material.dart';

import '../models/destination.dart';
import '../models/tour.dart';

class DestinationScreen extends StatelessWidget {
  final Destination? destination;
  final Tour? tour;

  const DestinationScreen({
    super.key,
    this.destination,
    this.tour,
  });

  @override
  Widget build(BuildContext context) {
    final String title =
        destination?.name ?? tour?.title ?? 'Destination';

    final String image =
        destination?.image ?? tour?.image ?? '';

    final String description =
        destination?.description ?? tour?.description ?? '';

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 430,
                pinned: true,
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 14),

                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.grey.shade700,
                        ),
                      ),

                      const SizedBox(height: 30),

                      if (tour != null) ...[
                        _InfoRow(
                          icon: Icons.access_time,
                          title: 'Duration',
                          value: tour!.duration,
                        ),

                        _InfoRow(
                          icon: Icons.calendar_month,
                          title: 'Season',
                          value: tour!.season,
                        ),

                        _InfoRow(
                          icon: Icons.hiking,
                          title: 'Difficulty',
                          value: tour!.difficulty,
                        ),
                      ],

                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Date selection coming next!'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF211F23),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Select date',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Row(
        children: [
          Icon(icon),

          const SizedBox(width: 14),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
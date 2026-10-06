import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../theme/app_theme.dart';
import '../widgets/category_card.dart';
import '../widgets/destination_card.dart';
import '../widgets/tour_card.dart';
import 'destination_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // ----------------------------------------------------------
            // HEADER
            // ----------------------------------------------------------
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        Icons.explore_outlined,
                        color: AppTheme.dark,
                        size: 24,
                      ),
                    ),

                    const SizedBox(width: 12),

                    // Welcome text
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to Luma,',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'choose your destination',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF77747D),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Search button
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.65),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.search,
                        size: 21,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ----------------------------------------------------------
            // CATEGORY CARDS
            // ----------------------------------------------------------
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 22),
                child: SizedBox(
                  height: 108,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      _CategoryImageCard(
                        title: 'Popular\ndestinations',
                        image:
                        'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600',
                      ),
                      _CategoryImageCard(
                        title: 'Best adventure\nroutes',
                        image:
                        'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=600',
                      ),
                      _CategoryImageCard(
                        title: 'Nature\nescapes',
                        image:
                        'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=600',
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ----------------------------------------------------------
            // DESTINATION SECTION
            // ----------------------------------------------------------
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Explore destinations',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ----------------------------------------------------------
            // MAIN DESTINATION CARD
            // ----------------------------------------------------------
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
                child: _MainDestinationCard(
                  destination: destinations.first,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DestinationScreen(
                          destination: destinations.first,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // ----------------------------------------------------------
            // POPULAR DESTINATIONS
            // ----------------------------------------------------------
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 14),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Popular places',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: AppTheme.dark,
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 270,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    final destination = destinations[index];

                    return DestinationCard(
                      destination: destination,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DestinationScreen(
                              destination: destination,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),

            // ----------------------------------------------------------
            // TOURS
            // ----------------------------------------------------------
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 14),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Recommended tours',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: AppTheme.dark,
                    ),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              sliver: SliverList.builder(
                itemCount: tours.length,
                itemBuilder: (context, index) {
                  final tour = tours[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: TourCard(tour: tour),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================================
// CATEGORY IMAGE CARD
// ======================================================================

class _CategoryImageCard extends StatelessWidget {
  final String title;
  final String image;

  const _CategoryImageCard({
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      margin: const EdgeInsets.only(right: 8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) {
              return Container(
                color: Colors.grey.shade300,
                child: const Icon(Icons.image_outlined),
              );
            },
          ),

          // Dark gradient
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.65),
                ],
              ),
            ),
          ),

          Positioned(
            left: 10,
            right: 8,
            bottom: 9,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                height: 1.1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ======================================================================
// MAIN DESTINATION CARD
// ======================================================================

class _MainDestinationCard extends StatelessWidget {
  final dynamic destination;
  final VoidCallback onTap;

  const _MainDestinationCard({
    required this.destination,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Destination header
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 6, 12),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: AppTheme.background,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: AppTheme.primary,
                      size: 20,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          destination.country,
                          style: TextStyle(
                            fontSize: 12,
                            color: AppTheme.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.chevron_right,
                    size: 24,
                  ),
                ],
              ),
            ),

            // Large organic image
            ClipPath(
              clipper: _OrganicImageClipper(),
              child: SizedBox(
                height: 245,
                width: double.infinity,
                child: Image.network(
                  destination.image,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) {
                    return Container(
                      color: Colors.grey.shade300,
                      child: const Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          size: 40,
                        ),
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;

                    return Container(
                      color: Colors.grey.shade200,
                      child: const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
              child: Text(
                destination.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.4,
                  color: AppTheme.secondaryText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================================
// ORGANIC IMAGE SHAPE
// ======================================================================

class _OrganicImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 35);

    path.quadraticBezierTo(
      size.width * 0.25,
      0,
      size.width * 0.50,
      25,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      50,
      size.width,
      20,
    );

    path.lineTo(size.width, size.height - 30);

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height,
      size.width * 0.50,
      size.height - 25,
    );

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height - 50,
      0,
      size.height - 15,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

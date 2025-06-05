import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120.0, // Height of the app bar when fully expanded
      floating: false,
      pinned: true, // Keeps the app bar visible when scrolling
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.asset(
              'assets/images/appbar_background.png',
              fit: BoxFit.cover,
            ),
            // Dark overlay for better contrast
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            // Logo on the left
            Positioned(
              left: 16.0,
              bottom: 16.0,
              child: Image.asset(
                'assets/images/logo.png',
                height: 40.0, // Adjust based on your logo size
                width: 40.0,
              ),
            ),
          ],
        ),
      ),
      // Icons on the right
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle notification action
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle profile action
          },
        ),
      ],
    );
  }
}
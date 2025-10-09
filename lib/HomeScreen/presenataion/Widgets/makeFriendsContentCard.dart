import 'package:flutter/material.dart';

class MakeFriendsContentCard extends StatelessWidget {
  final String categoryName;
  final String title;
  final String userName;
  final String location;
  final String mainImage;
  final String userImage;

  const MakeFriendsContentCard({
    super.key,
    required this.categoryName,
    required this.title,
    required this.userName,
    required this.location,
    required this.mainImage,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate responsive container size, capped at 80% of available width
        final containerSize = constraints.maxWidth * 0.8;

        return Center(
          child: AspectRatio(
            aspectRatio: 1.0, // Maintain square shape
            child: Container(
              constraints: BoxConstraints(
                maxWidth: containerSize,
                maxHeight: containerSize,
              ),
              child: Stack(
                children: [
                  // Main Container with background image
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: NetworkImage(mainImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Top-right category container
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: constraints.maxWidth * 0.4,
                        minHeight: 40,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: Image.network(
                              'https://via.placeholder.com/20',
                              fit: BoxFit.cover,
                            ), // Category icon
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Text(
                              categoryName,
                              style: const TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Bottom info container
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(userImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    userName,
                                    style: const TextStyle(
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      const SizedBox(width: 3),
                                      Expanded(
                                        child: Text(
                                          location.toUpperCase(),
                                          style: const TextStyle(
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            height: 1.27,
                                            letterSpacing: 2,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Left center vertical menu
                  Positioned(
                    left: 10,
                    top: containerSize * 0.3,
                    child: Column(
                      children: [
                        _iconButton(Icons.favorite),
                        const SizedBox(height: 10),
                        _iconButton(Icons.chat),
                        const SizedBox(height: 10),
                        _iconButton(Icons.more_horiz),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _iconButton(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
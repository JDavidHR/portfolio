import 'package:flutter/material.dart';

class ImagePreviewWidget extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const ImagePreviewWidget({
    super.key,
    required this.imageUrl,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          if (description != null) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

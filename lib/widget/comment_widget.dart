import 'package:flutter/material.dart';
import '../model/comments.dart';

class CommentWidget extends StatelessWidget {
  final Comments comments;
  const CommentWidget({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  comments.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'post ${comments.postId}',
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xFFBBBBBB),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            comments.email,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFFAAAAAA),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            comments.body,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF666666),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

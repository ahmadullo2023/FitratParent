import 'package:flutter/material.dart';

class StoryAvatar extends StatefulWidget {
  final String? imageUrl;
  final bool isRead;
  final String? storyText;
  final double size;
  final VoidCallback onClick;

  const StoryAvatar({
    super.key,
    required this.imageUrl,
    this.storyText,
    this.isRead = false,
    this.size = 68,
    required this.onClick,
  });

  @override
  State<StoryAvatar> createState() => _StoryAvatarState();
}

class _StoryAvatarState extends State<StoryAvatar> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    final bool isValidUrl = widget.imageUrl?.isNotEmpty ?? false;
    return GestureDetector(
        onTap: widget.onClick,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: widget.isRead
                ? LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFFD2D6DB), Color(0xFFD2D6DB)])
                : LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.green, Colors.blue],
                  ),
          ),
          padding: EdgeInsets.all(2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      children: [
                        Image.network(
                          widget.imageUrl!,
                          width: widget.size - 4,
                          height: widget.size - 4,
                          fit: BoxFit.cover,
                          loadingBuilder: (_, child, loadingProgress) {
                            if (loadingProgress == null) {
                              Future.microtask(() {
                                if (mounted) setState(() => _isLoading = false);
                              });
                            }
                            return child;
                          },
                          errorBuilder: (_, __, ___) {
                            setState(() => _isLoading = false);
                            return const SizedBox.shrink();
                          },
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(0, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0),
                                  Color.fromARGB(255, 0, 0, 0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 5,
                  child: Text(
                    widget.storyText ?? "Story text...",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

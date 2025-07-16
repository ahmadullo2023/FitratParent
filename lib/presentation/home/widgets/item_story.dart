import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_assets.dart';

class StoryAvatar extends StatefulWidget {
  final String? imageUrl;
  final bool isRead;
  final double size;
  final VoidCallback onClick;

  const StoryAvatar({
    super.key,
    required this.imageUrl,
    this.isRead = false,
    this.size = 70,
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
        width: widget.size,
        height: widget.size,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isRead ? Colors.grey.shade400 : Colors.green,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isValidUrl)
              ClipRRect(
                borderRadius: BorderRadius.circular(14), // 16 - padding
                child: Image.network(
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
              )
            else
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: SvgPicture.asset(
                  AppIcons.person,
                  width: widget.size - 4,
                  height: widget.size - 4,
                  fit: BoxFit.cover,
                ),
              ),

            if (_isLoading && isValidUrl)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black12,
                  ),
                  child: const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import '../app_assets.dart';

class ItemResults extends StatelessWidget {
  final String? topImageUrl;
  final String? studentImageUrl;
  final String studentName;
  final String resultType;
  final String score;
  final bool isBig;
  final String teacherName;
  final VoidCallback onTap;

  const ItemResults(
      {super.key,
      required this.topImageUrl,
      required this.studentImageUrl,
      required this.studentName,
      required this.resultType,
      required this.score,
      required this.onTap,
      required this.teacherName,
      this.isBig = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: isBig ? 175 : 156,
        height: isBig ? 257 : 242,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: topImageUrl != null && topImageUrl!.isNotEmpty
                    ? Image.network(
                        topImageUrl!,
                        width: isBig ? 155 : 140,
                        height: isBig ? 155 : 140,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: isBig ? 155 : 140,
                            height: isBig ? 155 : 140,
                            color: Colors.white, // optional background
                            child: Center(
                              child: Image.asset(
                                AppIcons.bloodReport,
                                width: isBig ? 140 : 128,
                                height: isBig ? 140 : 128,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      )
                    : Container(
                        width: isBig ? 155 : 140,
                        height: isBig ? 155 : 140,
                        color: Colors.white, // optional background
                        child: Center(
                          child: Image.asset(
                            AppIcons.bloodReport,
                            width: isBig ? 140 : 128,
                            height: isBig ? 140 : 128,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  if (studentImageUrl != null &&
                      studentImageUrl!.isNotEmpty) ...[
                    Icon(Icons.person, color: Colors.black26),

                    // CircleAvatar(
                    //   backgroundColor: Colors.white,
                    //   radius: 12,
                    //   backgroundImage: NetworkImage("https://icons.veryicon.com/png/o/miscellaneous/bitisland-world/person-18.png")),

                    const SizedBox(width: 8),
                  ],
                  Expanded(
                    child: Text(
                      studentName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "$resultType $score",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  teacherName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF6C737F),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

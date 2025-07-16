import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ItemCourses extends StatelessWidget {
  final VoidCallback onClick;
  final Color color;
  final String subject;
  final String name;
  final double percentage;
  final String? imageUrl;

  const ItemCourses({
    super.key,
    required this.onClick,
    required this.color,
    required this.subject,
    required this.name,
    required this.percentage,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        border: const Border(
          top: BorderSide(color: Color(0xFFE5E7EB), width: 3),
          left: BorderSide(color: Color(0xFFE5E7EB), width: 3),
          right: BorderSide(color: Color(0xFFE5E7EB), width: 3),
          bottom: BorderSide(color: Color(0xFFE5E7EB), width: 6),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: (){
            Future.delayed(const Duration(milliseconds: 100), onClick);
          },
          borderRadius: BorderRadius.circular(12),
          splashColor: Colors.grey.withOpacity(0.2),
          highlightColor: Colors.grey.withOpacity(0.1),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: imageUrl != null
                      ? Image.network(
                    imageUrl!,
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                  )
                      : Icon(
                    Icons.book,
                    color: color,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemCoursesShimmer extends StatelessWidget {
  const ItemCoursesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          height: 72,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: const Border(
              top: BorderSide(color: Color(0xFFE5E7EB), width: 1.5),
              left: BorderSide(color: Color(0xFFE5E7EB), width: 1.5),
              right: BorderSide(color: Color(0xFFE5E7EB), width: 1.5),
              bottom: BorderSide(color: Color(0xFFE5E7EB), width: 3),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 16,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 100,
                      height: 10,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
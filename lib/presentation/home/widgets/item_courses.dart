import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/app_colors.dart';

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
          top: BorderSide(color: Color(0xFFE5E7EB), width: 2.5),
          left: BorderSide(color: Color(0xFFE5E7EB), width: 2.5),
          right: BorderSide(color: Color(0xFFE5E7EB), width: 2.5),
          bottom: BorderSide(color: Color(0xFFE5E7EB), width: 5),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {
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
                    color: Color(0xFFEFF7FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: imageUrl!,
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                        )
                      : Icon(
                          Icons.book,
                          color: Colors.blue,
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
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                    height: 32,
                    width: 32,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          strokeCap: StrokeCap.round,
                          value: percentage / 100.0,
                          strokeWidth: 4.5,
                          backgroundColor: const Color(0xFFE5E7EB),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xff35B26A),
                          ),
                        ),
                        Text(
                          '${percentage.toInt()}%',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.emerald500,
                          ),
                        ),
                      ],
                    ),
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
    return Column(
      children: [
      SizedBox(
      height: 69,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 4),
      ),
    ),
        SizedBox(height: 38),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Container(
              height: 170,
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
        ),
        SizedBox(height: 15),
        SizedBox(
          width: 400,
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 3,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 150,
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
            ),
          ),
        ),
        ListView.separated(
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
        ),
      ],
    );
  }
}





// class ItemCoursesShimmer extends StatelessWidget {
//   const ItemCoursesShimmer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       itemCount: 3,
//       separatorBuilder: (context, index) => const SizedBox(height: 10),
//       itemBuilder: (context, index) => Shimmer.fromColors(
//         baseColor: Colors.grey.shade300,
//         highlightColor: Colors.grey.shade100,
//         child: Container(
//           height: 72,
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//             border: const Border(
//               top: BorderSide(color: Color(0xFFE5E7EB), width: 1.5),
//               left: BorderSide(color: Color(0xFFE5E7EB), width: 1.5),
//               right: BorderSide(color: Color(0xFFE5E7EB), width: 1.5),
//               bottom: BorderSide(color: Color(0xFFE5E7EB), width: 3),
//             ),
//           ),
//           child: Row(
//             children: [
//               Container(
//                 width: 48,
//                 height: 48,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade600,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: double.infinity,
//                       height: 16,
//                       color: Colors.grey.shade600,
//                     ),
//                     const SizedBox(height: 4),
//                     Container(
//                       width: 100,
//                       height: 10,
//                       color: Colors.grey.shade300,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Container(
//                 width: 60,
//                 height: 60,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.grey.shade300,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

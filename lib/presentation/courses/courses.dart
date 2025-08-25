// import 'package:flutter/material.dart';
// import '../home/widgets/item_courses.dart';
//
// class CoursesList extends StatefulWidget {
//   const CoursesList({super.key, required this.learningResponse});
//
//   final learningResponse;
//
//   @override
//   State<CoursesList> createState() => _CoursesListState();
// }
//
// class _CoursesListState extends State<CoursesList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           forceMaterialTransparency: true,
//           backgroundColor: Colors.white,
//           title: Text("Kurslar"),
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//             child: ListView.builder(
//                 itemCount: widget.learningResponse.length,
//                 itemBuilder: (context, index) => ItemCourses(
//                     imageUrl: widget.learningResponse![index].,
//                     onClick: () {},
//                     color: Color(0xFF35B26A),
//                     subject: "Kimyo noldan",
//                     name: widget.learningResponse![index].fullName.toString(),
//                     percentage: widget.learningResponse![index].overallLearning!)),
//           ),
//         ));
//   }
// }

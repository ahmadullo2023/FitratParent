import 'package:intl/intl.dart';

class Formatter {

  static String dateFormatter(String? value, {String? pattern}) {
    if (value == null) return "";
    return DateFormat(pattern??'dd.MM.yyyy')
        .format(DateTime.tryParse(value) ?? DateTime.now());
  }
  static String cleanStringApi(String inputString) {
    String cleanedString = inputString.replaceAll(RegExp(r'[\t\n\r\f\v]'), '');

    cleanedString = cleanedString.replaceAll(RegExp(r'\s+'), ' ');

    return cleanedString;
  }
}

String formatDate(String date) {
  if (date.isEmpty) return date;
  List<String> parts = date.split('-');
  return (parts.length == 3 && parts[0].length == 4) ? "${parts[2]}-${parts[1]}-${parts[0]}" : date;
}

String reFormatDate(String date) {
  if (date.isEmpty) return date;
  List<String> parts = date.split('-');
  return parts.length == 3 ? "${parts[2]}-${parts[1]}-${parts[0]}" : date;
}

String formatDateWithNoHours(String value) {
  return value.length >= 10 ? value.substring(0, 10) : "";
}
String formatDateWithNoHours2(String dateStr) {
  if (dateStr.isEmpty) return '';

  try {
    final date = DateTime.parse(dateStr);
    return DateFormat('yyyy-MM-dd').format(date);
  } catch (e) {
    return dateStr; // Return original if parsing fails
  }
}

// And make sure your formatDateForDisplay function handles the format correctly:
String formatDateForDisplay(String dateStr) {
  if (dateStr.isEmpty) return '';

  try {
    final date = DateTime.parse(dateStr);
    // Return in format "16.05.2025" (dd.MM.yyyy)
    return DateFormat('dd.MM.yyyy').format(date);
  } catch (e) {
    return dateStr; // Return original if parsing fails
  }
}

// String formatDateForDisplay(String date) {
//   if (date.isEmpty) return "";
//   final parts = date.split("-");
//   if (parts.length == 3) {
//     return "${parts[2]}-${parts[1]}-${parts[0]}";
//   }
//   return date;
// }

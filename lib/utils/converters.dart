import 'dart:convert';
import 'package:crypto/crypto.dart';

int uuidToInt(String uuid) {
  return uuid.hashCode.abs() % 2147483647;
}

// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:barker_tour/config/error_handlers/error_code.dart';
import 'package:barker_tour/utils/logger.dart';

class AppError {
  final ErrorCode code;
  final String? message;

  AppError({
    required this.code,
    this.message,
  });

  @override
  String toString() => 'AppError(code: $code, message: $message)';

  factory AppError.fromMap(Map<String, dynamic> map) {
    return AppError(
      code: fromString(map['code']),
      message: map['message'] ?? '',
    );
  }

  static ErrorCode fromString(String code) {
    return ErrorCode.values.firstWhere(
      (e) => e.toString() == 'ErrorCode.$code',
      orElse: () => ErrorCode.UNEXPECTED_ERROR,
    );
  }

  static AppError fromErrorCode(ErrorCode code) {
    return AppError(code: code, message: code.description);
  }

  static AppError handle(dynamic error) {
    logger.e('Error: $error');
    return AppError.fromMap(json.decode(error.toString()));
  }
}

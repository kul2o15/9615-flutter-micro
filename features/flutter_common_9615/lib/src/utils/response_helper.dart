import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../error/exception.dart';

class ResponseHelper {
  static Exception returnResponse(DioError dioError) {
    try {
      if (dioError.error.runtimeType == SocketException &&
          dioError.type == DioErrorType.other) {
        return SocketException(dioError.message);
      } else {
        return ServerException(
          dioError.message,
        );
      }
    } catch (e) {
      return ServerException(LocaleKeys.somethingWrong.tr());
    }
  }
}

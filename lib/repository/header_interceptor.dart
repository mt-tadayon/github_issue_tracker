import 'dart:async';
import 'package:chopper/chopper.dart';
import '.key.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String AUTH_HEADER = 'Authorization';


  @override
  FutureOr<Request> onRequest(Request request) async {
    Request newRequest =
        request.copyWith(headers: {AUTH_HEADER: BEARER + TOKEN});
    return newRequest;
  }
}

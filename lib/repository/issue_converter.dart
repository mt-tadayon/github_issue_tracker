import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:github_issue_tracker/model/issue.dart';

class IssueConverter implements Converter {
  @override
  Request convertRequest(Request request) {
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );

    Request encodeJson(Request request) {
      var contentType = request.headers[contentTypeKey];
      if (contentType != null && contentType.contains(jsonHeaders)) {
        return request.copyWith(body: json.encode(request.body));
      }
      return request;
    }

    return encodeJson(req);
  }

  Response decodeJson<BodyType, InnerType>(Response response) {
    var contentType = response.headers[contentTypeKey];
    var body = response.body;
    if (contentType != null && contentType.contains(jsonHeaders)) {
      body = utf8.decode(response.bodyBytes);
    }
    try {
      List<dynamic> mapData =
          json.decode(body);
      List<Issue> issues = mapData.map((e) => Issue.fromJson(e)).toList();
      return response.copyWith<BodyType>(body: issues as BodyType);
    } catch (e) {
      chopperLogger.warning(e);
      return response.copyWith<BodyType>(body: body);
    }
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return decodeJson<BodyType, InnerType>(response);
  }
}

import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetAllStudentsCall {
  static Future<ApiCallResponse> call({
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllStudents',
      apiUrl: '${rutaNgrok}/api/students',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? matricula(dynamic response) => (getJsonField(
        response,
        r'''$[:].studentId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? grado(dynamic response) => (getJsonField(
        response,
        r'''$[:].gradeLevel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreateStudentCall {
  static Future<ApiCallResponse> call({
    String? studentId = '',
    String? name = '',
    int? gradeLevel,
    String? email = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    final ffApiRequestBody = '''
{
  "studentId": "${escapeStringForJson(studentId)}",
  "name": "${escapeStringForJson(name)}",
  "gradeLevel": ${gradeLevel},
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateStudent',
      apiUrl: '${rutaNgrok}/api/students',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStudentByIdCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetStudentById',
      apiUrl: '${rutaNgrok}/api/students/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateStudentCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? studentId = '',
    String? name = '',
    int? gradeLevel,
    String? email = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    final ffApiRequestBody = '''
{
  "studentId": "${escapeStringForJson(studentId)}",
  "name": "${escapeStringForJson(name)}",
  "gradeLevel": ${gradeLevel},
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateStudent',
      apiUrl: '${rutaNgrok}/api/students/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSubjectCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    int? gradeLevel,
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "gradeLevel": ${gradeLevel}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateSubject',
      apiUrl: '${rutaNgrok}/api/subjects',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSubjectsCall {
  static Future<ApiCallResponse> call({
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllSubjects',
      apiUrl: '${rutaNgrok}/api/subjects',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSubjectByIdCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetSubjectById',
      apiUrl: '${rutaNgrok}/api/subjects/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSubjectCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    int? gradeLevel,
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "gradeLevel": ${gradeLevel}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateSubject',
      apiUrl: '${rutaNgrok}/api/subjects/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteStudentCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteStudent',
      apiUrl: '${rutaNgrok}/api/students/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSubjectCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteSubject',
      apiUrl: '${rutaNgrok}/api/subjects/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllGradesCall {
  static Future<ApiCallResponse> call({
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllGrades',
      apiUrl: '${rutaNgrok}/api/grades',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEligibleSubjectsForStudentCall {
  static Future<ApiCallResponse> call({
    String? rutaNgrok,
    String? id = '',
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetEligibleSubjectsForStudent',
      apiUrl: '${rutaNgrok}/api/grades/eligible-subjects/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? gradeLevel(dynamic response) => (getJsonField(
        response,
        r'''$[:].gradeLevel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetGradeByIdCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetGradeById',
      apiUrl: '${rutaNgrok}/api/grades/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateGradeCall {
  static Future<ApiCallResponse> call({
    double? score,
    String? date = '',
    String? studentId = '',
    String? subjectId = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    final ffApiRequestBody = '''
{
  "score": ${score},
  "date": "${escapeStringForJson(date)}",
  "studentId": "${escapeStringForJson(studentId)}",
  "subjectId": "${escapeStringForJson(subjectId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateGrade',
      apiUrl: '${rutaNgrok}/api/grades',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
}

class UpdateGradeCall {
  static Future<ApiCallResponse> call({
    double? score,
    String? date = '',
    String? studentId = '',
    String? subjectId = '',
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    final ffApiRequestBody = '''
{
  "score": ${score},
  "date": "${escapeStringForJson(date)}",
  "studentId": "${escapeStringForJson(studentId)}",
  "subjectId": "${escapeStringForJson(subjectId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateGrade',
      apiUrl: '${rutaNgrok}/api/grades/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteGradeCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteGrade',
      apiUrl: '${rutaNgrok}/api/grades/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StudentAcademicReportCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'StudentAcademicReport',
      apiUrl: '${rutaNgrok}/api/reports/student/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubjectAcademicReportCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'SubjectAcademicReport ',
      apiUrl: '${rutaNgrok}/api/reports/subject/${id}',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRegularStudentsCall {
  static Future<ApiCallResponse> call({
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetRegularStudents',
      apiUrl: '${rutaNgrok}/api/reports/regular-students',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIrregularStudentsCall {
  static Future<ApiCallResponse> call({
    String? rutaNgrok,
  }) async {
    rutaNgrok ??= FFAppConstants.rutaNgrok;

    return ApiManager.instance.makeApiCall(
      callName: 'GetIrregularStudents',
      apiUrl: '${rutaNgrok}/api/reports/irregular-students',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

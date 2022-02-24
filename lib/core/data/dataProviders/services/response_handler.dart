// ignore_for_file: avoid_print, nullable_type_in_catch_clause

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:malon_weather/core/data/models/error_model.dart';
import 'package:malon_weather/core/data/models/success_model.dart';

handleResponse(http.Response response) {
  try {
    print(
        'ResponseCode:: ${response.statusCode},   ResponseBody:: ${response.body}');

    final int code = response.statusCode;
    final dynamic body = json.decode(response.body);
    if (code == 200 || code == 201) {
      return SuccessModel(body);
    }

    return ErrorModel(body['error']);
  } on TimeoutException catch (e) {
    return ErrorModel(e);
  } on http.ClientException catch (e) {
    return ErrorModel(e);
  } catch (ex) {
    // print(ex.toString());
    return ErrorModel('Request failed');
  }
}

import 'dart:convert';

parseResponseBody(String responeBody) {
  try {
    return jsonDecode(responeBody);
  } catch(_) {
    return responeBody;
  }
}
import 'package:cry/model/response_body_api.dart';
import 'package:cry/utils/http_util.dart';

class VideoApi {
  static Future<ResponseBodyApi> upload(data) async {
    ResponseBodyApi responseBodyApi = await HttpUtil.post('/video/upload', data: data);
    return responseBodyApi;
  }
}

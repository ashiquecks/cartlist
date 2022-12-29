import 'dart:convert';
import 'dart:io';
import 'package:cartlist/HELPER/categoryNetworkResponse.dart';
import 'package:cartlist/MODAL/categoryModal.dart';
import 'package:http/http.dart';

class HomeData {
  static Future<NetworkResponse<List<SampleResponse>>> getSampleResponse(
      {int limit = 20, int page = 1}) async {
    try {
      final response = await get(Uri.parse(
          'http://192.168.42.198/cartlist_api/getcategorydetails.php'));

      print(response.body);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List<SampleResponse> postList = [];
        body.forEach((e) {
          SampleResponse sampleResponse = SampleResponse.fromJson(e);
          postList.add(sampleResponse);
        });
        return NetworkResponse(true, postList,
            responseCode: response.statusCode);
      } else {
        print("somthing else");
      }
    } catch (e) {
      print(e.toString());
    }
    throw Exception('Unexpected error occured!');
  }
}

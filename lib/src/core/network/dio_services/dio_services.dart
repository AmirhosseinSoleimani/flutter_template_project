

import 'package:dio/dio.dart';
import 'package:network_module/network_module.dart';

// class DioServices{
//   Future postRequest({required DioClient dioClient, required String path, required Map<String, dynamic> body, required Map<String, dynamic> headers}) async {
//       var response = await makePostRequest(
//         dioClient.dio.post(
//             path,
//             data: body,
//             options: Options(
//                 headers: headers
//             )
//         ),
//       );
//       return response;
//   }
// }


class ApiConfig {
  ApiConfig._();

  /// **** Production ****
  static const String baseApiUrl = "https://emdadapi.emdadsaipa.ir";
  static const String carImagesUrl = "https://emdadapi.emdadsaipa.ir/content/car-images/";
  static const String baseSocketUrl = "ws://emdadapi.emdadsaipa.ir/api/Notification/Connect/";
  static const String appImagesUrl = "https://emdadapi.emdadsaipa.ir/content/mobile-app-images/";

  ///internal test server
  // static const String baseApiUrl = "http://172.16.4.97:5120";

  ///**** Develop ****
  ///dev server is unavailable
  // static const String baseApiUrl = "https://emdadapi.behpardaz.net";
  // static const String carImagesUrl = "https://emdadapi.behpardaz.net/content/car-images/";
  // static const String baseSocketUrl = "ws://emdadapi.behpardaz.net/api/Notification/Connect/";
  // static const String appImagesUrl = "https://emdadapi.behpardaz.net/content/mobile-app-images/";

  // static const String baseApiUrl = "http://172.16.170.56:15253";
  // static const String baseApiUrl = "http://172.16.170.56:5253";
  // static const String baseApiUrl = "http://172.16.170.51:5253";
  // static const String baseApiUrl = "http://172.16.170.49:5253";
  // static const String baseApiUrl = "http://172.16.170.53:5253";

  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration connectionTimeout = Duration(seconds: 30);

  static const String getProfile = '$baseApiUrl/api/User/GetProfile';
}




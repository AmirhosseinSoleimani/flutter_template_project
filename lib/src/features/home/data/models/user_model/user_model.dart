import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String? guid;
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final String? mobileNumber;
  final String? nationalCode;
  final int? gender;
  final bool? active;
  final String? otpCode;
  final List<CarModel>? carList;
  final List<DefectsModel>? defectsList;
  final List<CoverCarModel>? coverCarList;
  final List<PackageModel>? packageList;
  final List<ColorModel>? colorList;
  final List<FactoryModel>? automobileFactories;
  final MetaData? metaData;
  const UserModel({
    this.guid,
    this.firstName,
    this.lastName,
    this.fullName,
    this.mobileNumber,
    this.nationalCode,
    this.gender,
    this.active,
    this.otpCode,
    this.carList,
    this.defectsList,
    this.coverCarList,
    this.packageList,
    this.colorList,
    this.automobileFactories,
    this.metaData
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@JsonSerializable()
class MetaData {
  final String? androidAppVersion;
  final String? androidAppLink;
  MetaData({this.androidAppVersion, this.androidAppLink});

  factory MetaData.fromJson(Map<String, dynamic> json) => _$MetaDataFromJson(json);
}

@JsonSerializable()
class FactoryModel {
  final int? factoryId;
  final String? factoryTitle;
  FactoryModel(this.factoryId, this.factoryTitle);
  factory FactoryModel.fromJson(Map<String, dynamic> json) => _$FactoryModelFromJson(json);
}

@JsonSerializable()
class ColorModel {
  final int? colorId;
  final String? colorName;
  final String? colorCod;
  ColorModel({this.colorId, this.colorName, this.colorCod});
  factory ColorModel.fromJson(Map<String, dynamic> json) => _$ColorModelFromJson(json);
}

@JsonSerializable()
class PackageModel {
  final int? id;
  final String? name;
  PackageModel({this.id, this.name});
  factory PackageModel.fromJson(Map<String, dynamic> json) => _$PackageModelFromJson(json);
}

@JsonSerializable()
class CoverCarModel {
  final int? id;
  final int? carCoverId;
  final String? name;
  final String? imageUrl;
  final bool? isOther;
  final int? carFactoryId;
  final String? carFactoryTitle;
  CoverCarModel({this.id, this.carCoverId, this.name, this.imageUrl, this.isOther, this.carFactoryId, this.carFactoryTitle});
  factory CoverCarModel.fromJson(Map<String, dynamic> json) => _$CoverCarModelFromJson(json);
}

@JsonSerializable()
class DefectsModel {
  final int? id;
  final int? code;
  final String? title;
  DefectsModel({this.id, this.code, this.title});
  factory DefectsModel.fromJson(Map<String, dynamic> json) => _$DefectsModelFromJson(json);
}

@JsonSerializable()
class CarModel {
  final String? guid;
  final String? name;
  final int? productionYear;
  final String? licensePlateNo;
  final String? chassisNo;
  final String? vin;
  final int? coverCarId;
  final int? carModelId;
  final bool? hasSubscription;
  final int? colorId;
  final String? engineNumber;
  final bool? isSaipa;
  final bool? reliable;
  final int? carFactoryId;
  final String? carFactoryTitle;
  final int? vehicleUsageId;
  final String? vehicleUsageTitle;
  final int? carGroupId;
  final String? carGroupTitle;
  CarModel({
    this.guid,
    this.name,
    this.productionYear,
    this.licensePlateNo,
    this.chassisNo,
    this.vin,
    this.coverCarId,
    this.carModelId,
    this.hasSubscription,
    this.colorId,
    this.engineNumber,
    this.isSaipa,
    this.reliable,
    this.carFactoryId,
    this.carFactoryTitle,
    this.vehicleUsageId,
    this.vehicleUsageTitle,
    this.carGroupId,
    this.carGroupTitle
  });
  factory CarModel.fromJson(Map<String, dynamic> json) => _$CarModelFromJson(json);
}

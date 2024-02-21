// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      guid: json['guid'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      fullName: json['fullName'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      nationalCode: json['nationalCode'] as String?,
      gender: json['gender'] as int?,
      active: json['active'] as bool?,
      otpCode: json['otpCode'] as String?,
      carList: (json['carList'] as List<dynamic>?)
          ?.map((e) => CarModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      defectsList: (json['defectsList'] as List<dynamic>?)
          ?.map((e) => DefectsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      coverCarList: (json['coverCarList'] as List<dynamic>?)
          ?.map((e) => CoverCarModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      packageList: (json['packageList'] as List<dynamic>?)
          ?.map((e) => PackageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      colorList: (json['colorList'] as List<dynamic>?)
          ?.map((e) => ColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      automobileFactories: (json['automobileFactories'] as List<dynamic>?)
          ?.map((e) => FactoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'guid': instance.guid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'mobileNumber': instance.mobileNumber,
      'nationalCode': instance.nationalCode,
      'gender': instance.gender,
      'active': instance.active,
      'otpCode': instance.otpCode,
      'carList': instance.carList,
      'defectsList': instance.defectsList,
      'coverCarList': instance.coverCarList,
      'packageList': instance.packageList,
      'colorList': instance.colorList,
      'automobileFactories': instance.automobileFactories,
      'metaData': instance.metaData,
    };

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      androidAppVersion: json['androidAppVersion'] as String?,
      androidAppLink: json['androidAppLink'] as String?,
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) => <String, dynamic>{
      'androidAppVersion': instance.androidAppVersion,
      'androidAppLink': instance.androidAppLink,
    };

FactoryModel _$FactoryModelFromJson(Map<String, dynamic> json) => FactoryModel(
      json['factoryId'] as int?,
      json['factoryTitle'] as String?,
    );

Map<String, dynamic> _$FactoryModelToJson(FactoryModel instance) =>
    <String, dynamic>{
      'factoryId': instance.factoryId,
      'factoryTitle': instance.factoryTitle,
    };

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) => ColorModel(
      colorId: json['colorId'] as int?,
      colorName: json['colorName'] as String?,
      colorCod: json['colorCod'] as String?,
    );

Map<String, dynamic> _$ColorModelToJson(ColorModel instance) =>
    <String, dynamic>{
      'colorId': instance.colorId,
      'colorName': instance.colorName,
      'colorCod': instance.colorCod,
    };

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) => PackageModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PackageModelToJson(PackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CoverCarModel _$CoverCarModelFromJson(Map<String, dynamic> json) =>
    CoverCarModel(
      id: json['id'] as int?,
      carCoverId: json['carCoverId'] as int?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isOther: json['isOther'] as bool?,
      carFactoryId: json['carFactoryId'] as int?,
      carFactoryTitle: json['carFactoryTitle'] as String?,
    );

Map<String, dynamic> _$CoverCarModelToJson(CoverCarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carCoverId': instance.carCoverId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isOther': instance.isOther,
      'carFactoryId': instance.carFactoryId,
      'carFactoryTitle': instance.carFactoryTitle,
    };

DefectsModel _$DefectsModelFromJson(Map<String, dynamic> json) => DefectsModel(
      id: json['id'] as int?,
      code: json['code'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$DefectsModelToJson(DefectsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
    };

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel(
      guid: json['guid'] as String?,
      name: json['name'] as String?,
      productionYear: json['productionYear'] as int?,
      licensePlateNo: json['licensePlateNo'] as String?,
      chassisNo: json['chassisNo'] as String?,
      vin: json['vin'] as String?,
      coverCarId: json['coverCarId'] as int?,
      carModelId: json['carModelId'] as int?,
      hasSubscription: json['hasSubscription'] as bool?,
      colorId: json['colorId'] as int?,
      engineNumber: json['engineNumber'] as String?,
      isSaipa: json['isSaipa'] as bool?,
      reliable: json['reliable'] as bool?,
      carFactoryId: json['carFactoryId'] as int?,
      carFactoryTitle: json['carFactoryTitle'] as String?,
      vehicleUsageId: json['vehicleUsageId'] as int?,
      vehicleUsageTitle: json['vehicleUsageTitle'] as String?,
      carGroupId: json['carGroupId'] as int?,
      carGroupTitle: json['carGroupTitle'] as String?,
    );

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'guid': instance.guid,
      'name': instance.name,
      'productionYear': instance.productionYear,
      'licensePlateNo': instance.licensePlateNo,
      'chassisNo': instance.chassisNo,
      'vin': instance.vin,
      'coverCarId': instance.coverCarId,
      'carModelId': instance.carModelId,
      'hasSubscription': instance.hasSubscription,
      'colorId': instance.colorId,
      'engineNumber': instance.engineNumber,
      'isSaipa': instance.isSaipa,
      'reliable': instance.reliable,
      'carFactoryId': instance.carFactoryId,
      'carFactoryTitle': instance.carFactoryTitle,
      'vehicleUsageId': instance.vehicleUsageId,
      'vehicleUsageTitle': instance.vehicleUsageTitle,
      'carGroupId': instance.carGroupId,
      'carGroupTitle': instance.carGroupTitle,
    };

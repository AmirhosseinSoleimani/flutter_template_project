import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final String? mobileNumber;
  final String? nationalCode;
  final int? gender;

  const UserEntity({
    this.firstName,
    this.lastName,
    this.fullName,
    this.mobileNumber,
    this.nationalCode,
    this.gender,
  });

  @override
  List<Object?> get props => [
    firstName,
    lastName,
    fullName,
    mobileNumber,
    nationalCode,
    gender,
  ];
}

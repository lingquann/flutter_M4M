class BuyerUserModel {
  final String? email;
  final String? fullName;
  final String? phoneNumber;
  final String? buyerId;
  final String? address;
  final String? profileImage;

  BuyerUserModel({
    required this.email,
    required this.fullName,
    required this.phoneNumber,
    required this.buyerId,
    required this.address,
    required this.profileImage,
  });

  BuyerUserModel.fromJson(Map<String, Object?> json)
      : this(
          email: json['email']! as String,
          fullName: json['fullName']! as String,
          phoneNumber: json['phoneNumber']! as String,
          buyerId: json['buyerId']! as String,
          address: json['address'] as String?,
          profileImage: json['profileImage']! as String,
        );

  Map<String, Object?> toJson() {
    return {
      'email': email,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'buyerId': buyerId,
      'address': address,
      'profileImage': profileImage,
    };
  }
}



 
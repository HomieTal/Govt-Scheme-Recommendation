import 'family_member.dart';

class RationCard {
  final String cardNumber;
  final String cardType; // APL, BPL, AAY, PHH
  final String headName;
  final String address;
  final String district;
  final String state;
  final List<FamilyMember> members;
  final DateTime issueDate;
  final bool isActive;
  String password; // Default password is last 4 digits of card number + "1234"

  RationCard({
    required this.cardNumber,
    required this.cardType,
    required this.headName,
    required this.address,
    required this.district,
    required this.state,
    required this.members,
    required this.issueDate,
    this.isActive = true,
    String? password,
  }) : password = password ?? '${cardNumber.substring(cardNumber.length - 4)}1234';

  String get cardTypeFullName {
    switch (cardType) {
      case 'APL':
        return 'Above Poverty Line';
      case 'BPL':
        return 'Below Poverty Line';
      case 'AAY':
        return 'Antyodaya Anna Yojana';
      case 'PHH':
        return 'Priority Household';
      default:
        return cardType;
    }
  }

  factory RationCard.fromJson(Map<String, dynamic> json) {
    return RationCard(
      cardNumber: json['cardNumber'],
      cardType: json['cardType'],
      headName: json['headName'],
      address: json['address'],
      district: json['district'],
      state: json['state'],
      members: (json['members'] as List)
          .map((m) => FamilyMember.fromJson(m))
          .toList(),
      issueDate: DateTime.parse(json['issueDate']),
      isActive: json['isActive'] ?? true,
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cardNumber': cardNumber,
      'cardType': cardType,
      'headName': headName,
      'address': address,
      'district': district,
      'state': state,
      'members': members.map((m) => m.toJson()).toList(),
      'issueDate': issueDate.toIso8601String(),
      'isActive': isActive,
      'password': password,
    };
  }

  // Get default password hint
  String get defaultPasswordHint => 'Last 4 digits of card number + 1234';

  // Validate password
  bool validatePassword(String inputPassword) {
    return password == inputPassword;
  }

  // Change password
  void changePassword(String newPassword) {
    password = newPassword;
  }
}

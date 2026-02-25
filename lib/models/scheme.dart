class Scheme {
  final String id;
  final String name;
  final String description;
  final String category;
  final int minAge;
  final int maxAge;
  final String? gender; // 'Male', 'Female', or null for all
  final List<String> benefits;
  final String eligibility;
  final String howToApply;
  final String ministry;
  final String iconName;

  Scheme({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.minAge,
    required this.maxAge,
    this.gender,
    required this.benefits,
    required this.eligibility,
    required this.howToApply,
    required this.ministry,
    required this.iconName,
  });

  bool isEligible(int age, String memberGender) {
    bool ageEligible = age >= minAge && age <= maxAge;
    bool genderEligible = gender == null || gender == memberGender;
    return ageEligible && genderEligible;
  }

  factory Scheme.fromJson(Map<String, dynamic> json) {
    return Scheme(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      category: json['category'],
      minAge: json['minAge'],
      maxAge: json['maxAge'],
      gender: json['gender'],
      benefits: List<String>.from(json['benefits']),
      eligibility: json['eligibility'],
      howToApply: json['howToApply'],
      ministry: json['ministry'],
      iconName: json['iconName'],
    );
  }
}

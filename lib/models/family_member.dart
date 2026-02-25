class FamilyMember {
  final String id;
  final String name;
  final DateTime dateOfBirth;
  final String gender;
  final String relation;
  final String? occupation;
  final bool isHead;

  FamilyMember({
    required this.id,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.relation,
    this.occupation,
    this.isHead = false,
  });

  int get age {
    final now = DateTime.now();
    int age = now.year - dateOfBirth.year;
    if (now.month < dateOfBirth.month ||
        (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
      age--;
    }
    return age;
  }

  String get ageGroup {
    if (age < 6) return 'Infant/Toddler';
    if (age < 14) return 'Child';
    if (age < 18) return 'Adolescent';
    if (age < 25) return 'Youth';
    if (age < 60) return 'Adult';
    return 'Senior Citizen';
  }

  factory FamilyMember.fromJson(Map<String, dynamic> json) {
    return FamilyMember(
      id: json['id'],
      name: json['name'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      gender: json['gender'],
      relation: json['relation'],
      occupation: json['occupation'],
      isHead: json['isHead'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'gender': gender,
      'relation': relation,
      'occupation': occupation,
      'isHead': isHead,
    };
  }
}

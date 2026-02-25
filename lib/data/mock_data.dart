import '../models/family_member.dart';
import '../models/ration_card.dart';

class MockData {
  // Sample ration cards for demo/testing
  static Map<String, RationCard> rationCards = {
    'RC123456789012': RationCard(
      cardNumber: 'RC123456789012',
      cardType: 'BPL',
      headName: 'Ramesh Kumar',
      address: '123, Gandhi Nagar, Near Bus Stand',
      district: 'Pune',
      state: 'Maharashtra',
      issueDate: DateTime(2020, 5, 15),
      members: [
        FamilyMember(
          id: '1',
          name: 'Ramesh Kumar',
          dateOfBirth: DateTime(1975, 3, 10),
          gender: 'Male',
          relation: 'Self',
          occupation: 'Farmer',
          isHead: true,
        ),
        FamilyMember(
          id: '2',
          name: 'Sunita Devi',
          dateOfBirth: DateTime(1980, 7, 22),
          gender: 'Female',
          relation: 'Wife',
          occupation: 'Homemaker',
        ),
        FamilyMember(
          id: '3',
          name: 'Amit Kumar',
          dateOfBirth: DateTime(2002, 11, 5),
          gender: 'Male',
          relation: 'Son',
          occupation: 'Student',
        ),
        FamilyMember(
          id: '4',
          name: 'Priya Kumari',
          dateOfBirth: DateTime(2008, 4, 18),
          gender: 'Female',
          relation: 'Daughter',
          occupation: 'Student',
        ),
        FamilyMember(
          id: '5',
          name: 'Shanti Devi',
          dateOfBirth: DateTime(1950, 1, 1),
          gender: 'Female',
          relation: 'Mother',
        ),
      ],
    ),
    'RC987654321098': RationCard(
      cardNumber: 'RC987654321098',
      cardType: 'APL',
      headName: 'Suresh Patel',
      address: '456, Shivaji Road, Sector 5',
      district: 'Mumbai',
      state: 'Maharashtra',
      issueDate: DateTime(2019, 8, 20),
      members: [
        FamilyMember(
          id: '1',
          name: 'Suresh Patel',
          dateOfBirth: DateTime(1968, 6, 15),
          gender: 'Male',
          relation: 'Self',
          occupation: 'Business',
          isHead: true,
        ),
        FamilyMember(
          id: '2',
          name: 'Kamala Patel',
          dateOfBirth: DateTime(1972, 9, 8),
          gender: 'Female',
          relation: 'Wife',
          occupation: 'Teacher',
        ),
        FamilyMember(
          id: '3',
          name: 'Rahul Patel',
          dateOfBirth: DateTime(1998, 12, 25),
          gender: 'Male',
          relation: 'Son',
          occupation: 'Engineer',
        ),
        FamilyMember(
          id: '4',
          name: 'Neha Patel',
          dateOfBirth: DateTime(2015, 2, 14),
          gender: 'Female',
          relation: 'Daughter',
          occupation: 'Student',
        ),
      ],
    ),
    'RC555555555555': RationCard(
      cardNumber: 'RC555555555555',
      cardType: 'AAY',
      headName: 'Mohan Lal',
      address: '78, Ambedkar Colony',
      district: 'Nagpur',
      state: 'Maharashtra',
      issueDate: DateTime(2018, 3, 10),
      members: [
        FamilyMember(
          id: '1',
          name: 'Mohan Lal',
          dateOfBirth: DateTime(1960, 5, 20),
          gender: 'Male',
          relation: 'Self',
          occupation: 'Retired',
          isHead: true,
        ),
        FamilyMember(
          id: '2',
          name: 'Geeta Bai',
          dateOfBirth: DateTime(1963, 8, 12),
          gender: 'Female',
          relation: 'Wife',
          occupation: 'Homemaker',
        ),
        FamilyMember(
          id: '3',
          name: 'Baby Mohan',
          dateOfBirth: DateTime(2022, 6, 1),
          gender: 'Male',
          relation: 'Grandson',
        ),
      ],
    ),
  };

  static RationCard? validateRationCard(String cardNumber) {
    return rationCards[cardNumber.toUpperCase()];
  }
}

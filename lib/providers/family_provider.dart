import 'package:flutter/material.dart';
import '../models/ration_card.dart';
import '../models/family_member.dart';
import '../models/scheme.dart';
import '../data/mock_data.dart';
import '../data/schemes_data.dart';

class FamilyProvider extends ChangeNotifier {
  RationCard? _rationCard;
  FamilyMember? _selectedMember;
  bool _isLoading = false;
  String? _error;

  RationCard? get rationCard => _rationCard;
  FamilyMember? get selectedMember => _selectedMember;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isLoggedIn => _rationCard != null;

  List<FamilyMember> get familyMembers => _rationCard?.members ?? [];

  Future<bool> login(String cardNumber, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 2));

    final card = MockData.validateRationCard(cardNumber);

    if (card != null) {
      if (card.validatePassword(password)) {
        _rationCard = card;
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _error = 'Invalid password. Please try again.';
        _isLoading = false;
        notifyListeners();
        return false;
      }
    } else {
      _error = 'Invalid ration card number. Please check and try again.';
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> changePassword(String currentPassword, String newPassword) async {
    if (_rationCard == null) return false;

    if (!_rationCard!.validatePassword(currentPassword)) {
      _error = 'Current password is incorrect';
      notifyListeners();
      return false;
    }

    _rationCard!.changePassword(newPassword);
    notifyListeners();
    return true;
  }

  void logout() {
    _rationCard = null;
    _selectedMember = null;
    _error = null;
    notifyListeners();
  }

  void selectMember(FamilyMember member) {
    _selectedMember = member;
    notifyListeners();
  }

  void clearSelectedMember() {
    _selectedMember = null;
    notifyListeners();
  }

  List<Scheme> getSchemesForMember(FamilyMember member) {
    return SchemesData.getSchemesByAge(member.age, member.gender);
  }

  List<Scheme> getSchemesForAllMembers() {
    final Set<Scheme> allSchemes = {};
    for (final member in familyMembers) {
      allSchemes.addAll(getSchemesForMember(member));
    }
    return allSchemes.toList();
  }

  Map<FamilyMember, List<Scheme>> getSchemesGroupedByMember() {
    final Map<FamilyMember, List<Scheme>> grouped = {};
    for (final member in familyMembers) {
      grouped[member] = getSchemesForMember(member);
    }
    return grouped;
  }

  int getTotalEligibleSchemes() {
    return getSchemesForAllMembers().length;
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}

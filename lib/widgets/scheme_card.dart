import 'package:flutter/material.dart';
import '../models/scheme.dart';

class SchemeCard extends StatelessWidget {
  final Scheme scheme;
  final VoidCallback onTap;

  const SchemeCard({
    super.key,
    required this.scheme,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                    child: Icon(
                      _getIconForScheme(scheme.iconName),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          scheme.name,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            scheme.category,
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[400],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                scheme.description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[700],
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildInfoChip(
                    context,
                    '${scheme.minAge}-${scheme.maxAge} yrs',
                    Icons.cake,
                  ),
                  const SizedBox(width: 8),
                  if (scheme.gender != null)
                    _buildInfoChip(
                      context,
                      scheme.gender!,
                      scheme.gender == 'Female' ? Icons.female : Icons.male,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.grey[600]),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIconForScheme(String iconName) {
    switch (iconName) {
      case 'child_care':
        return Icons.child_care;
      case 'restaurant':
        return Icons.restaurant;
      case 'school':
        return Icons.school;
      case 'engineering':
        return Icons.engineering;
      case 'account_balance':
        return Icons.account_balance;
      case 'business':
        return Icons.business;
      case 'local_fire_department':
        return Icons.local_fire_department;
      case 'pregnant_woman':
        return Icons.pregnant_woman;
      case 'savings':
        return Icons.savings;
      case 'elderly':
        return Icons.elderly;
      case 'account_balance_wallet':
        return Icons.account_balance_wallet;
      case 'health_and_safety':
        return Icons.health_and_safety;
      case 'local_hospital':
        return Icons.local_hospital;
      case 'science':
        return Icons.science;
      case 'home':
        return Icons.home;
      case 'apartment':
        return Icons.apartment;
      case 'agriculture':
        return Icons.agriculture;
      case 'grass':
        return Icons.grass;
      case 'accessible':
        return Icons.accessible;
      case 'person':
        return Icons.person;
      default:
        return Icons.article;
    }
  }
}

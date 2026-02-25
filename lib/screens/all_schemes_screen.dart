import 'package:flutter/material.dart';
import '../data/schemes_data.dart';
import '../models/scheme.dart';
import 'home_screen.dart';

class AllSchemesScreen extends StatefulWidget {
  const AllSchemesScreen({super.key});

  @override
  State<AllSchemesScreen> createState() => _AllSchemesScreenState();
}

class _AllSchemesScreenState extends State<AllSchemesScreen> {
  String _selectedCategory = 'All';
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Scheme> get filteredSchemes {
    List<Scheme> schemes = SchemesData.getAllSchemes();

    // Filter by category
    if (_selectedCategory != 'All') {
      schemes = schemes.where((s) => s.category == _selectedCategory).toList();
    }

    // Filter by search query
    if (_searchQuery.isNotEmpty) {
      schemes = schemes
          .where((s) =>
              s.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
              s.description.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }

    return schemes;
  }

  @override
  Widget build(BuildContext context) {
    final categories = ['All', ...SchemesData.getAllCategories()];

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Schemes'),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search schemes...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Category Filter
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = category == _selectedCategory;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: FilterChip(
                    label: Text(category),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                    backgroundColor: Colors.grey[200],
                    selectedColor: Theme.of(context).colorScheme.primaryContainer,
                    checkmarkColor: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
            ),
          ),

          // Schemes List
          Expanded(
            child: filteredSchemes.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 80,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No schemes found',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Try adjusting your filters',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey[500],
                                  ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filteredSchemes.length,
                    itemBuilder: (context, index) {
                      final scheme = filteredSchemes[index];
                      return _buildSchemeCard(context, scheme);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildSchemeCard(BuildContext context, Scheme scheme) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SchemeDetailScreen(scheme: scheme),
            ),
          );
        },
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
                        ),
                        const SizedBox(height: 4),
                        Text(
                          scheme.ministry,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildTag(context, scheme.category, Icons.category),
                  _buildTag(
                    context,
                    '${scheme.minAge}-${scheme.maxAge} years',
                    Icons.cake,
                  ),
                  if (scheme.gender != null)
                    _buildTag(
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

  Widget _buildTag(BuildContext context, String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
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

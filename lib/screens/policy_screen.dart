import 'package:flutter/material.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy'), elevation: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary.withAlpha(200),
                    Theme.of(context).colorScheme.secondary.withAlpha(200),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.privacy_tip, size: 32, color: Colors.white),
                  const SizedBox(height: 12),
                  Text(
                    'Privacy Policy',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Last updated: January 2025',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Policy sections
            _buildPolicySection(
              context,
              '1. Information We Collect',
              'We collect information you provide directly, including login credentials, location data, and incident reports. Your data helps us improve our security services.',
            ),
            const SizedBox(height: 16),

            _buildPolicySection(
              context,
              '2. How We Use Your Data',
              'Your information is used to provide, maintain, and improve our services. We use location data to identify restricted areas and analyze security incidents.',
            ),
            const SizedBox(height: 16),

            _buildPolicySection(
              context,
              '3. Data Security',
              'We implement industry-standard security measures to protect your personal information from unauthorized access and disclosure.',
            ),
            const SizedBox(height: 16),

            _buildPolicySection(
              context,
              '4. Third-Party Sharing',
              'We do not sell, trade, or rent your personal information to third parties. Data may be shared with law enforcement if legally required.',
            ),
            const SizedBox(height: 16),

            _buildPolicySection(
              context,
              '5. Your Rights',
              'You have the right to access, modify, or delete your personal data. Contact our support team for any privacy-related requests.',
            ),
            const SizedBox(height: 16),

            _buildPolicySection(
              context,
              '6. Contact Us',
              'For questions about this privacy policy, please contact us at privacy@restrictedarea.com',
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildPolicySection(
    BuildContext context,
    String title,
    String content,
  ) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(content, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}

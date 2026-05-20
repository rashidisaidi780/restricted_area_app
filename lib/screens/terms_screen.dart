import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms & Conditions'), elevation: 0),
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
                  Icon(Icons.description, size: 32, color: Colors.white),
                  const SizedBox(height: 12),
                  Text(
                    'Terms & Conditions',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Effective from: January 2025',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Terms sections
            _buildTermSection(
              context,
              '1. User Responsibilities',
              'Users agree to use this application only for lawful purposes. You are responsible for maintaining the confidentiality of your account and password. Unauthorized access or use is prohibited.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '2. Reporting Accuracy',
              'All incident reports must be accurate and truthful. Submitting false or misleading information may result in account suspension or legal action.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '3. Intellectual Property Rights',
              'All content, including logos, designs, and text, is the property of Restricted Area Reporting System. Unauthorized reproduction or distribution is prohibited.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '4. Limitation of Liability',
              'We provide this service "as is" without warranties. We are not liable for damages arising from your use of or inability to use the application.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '5. Modifications to Terms',
              'We reserve the right to modify these terms at any time. Continued use of the application constitutes acceptance of updated terms.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '6. Termination',
              'We reserve the right to terminate user accounts that violate these terms or engage in prohibited activities.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '7. Governing Law',
              'These terms are governed by applicable laws. Any disputes shall be resolved in accordance with legal procedures.',
            ),
            const SizedBox(height: 16),

            _buildTermSection(
              context,
              '8. Agreement to Terms',
              'By using this application, you acknowledge that you have read, understood, and agree to be bound by these Terms & Conditions.',
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildTermSection(BuildContext context, String title, String content) {
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

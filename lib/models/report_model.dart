// Models for incident reporting
class Report {
  final String id;
  final String title;
  final String description;
  final String location;
  final double latitude;
  final double longitude;
  final DateTime reportedDate;
  final List<String> imageUrls;
  final String status; // pending, investigating, resolved
  final String severity; // low, medium, high, critical
  final String category; // trespassing, suspicious activity, vandalism, etc.
  final String reporterName;
  final String reporterPhone;

  Report({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.reportedDate,
    required this.imageUrls,
    required this.status,
    required this.severity,
    required this.category,
    required this.reporterName,
    required this.reporterPhone,
  });
}

// Mock data provider
class MockDataProvider {
  static List<Report> getMockedReports() {
    return [
      Report(
        id: '1',
        title: 'Suspicious Person Spotted',
        description:
            'Unknown individual found near the restricted facility boundary fence.',
        location: 'North Sector, Building A',
        latitude: 40.7128,
        longitude: -74.0060,
        reportedDate: DateTime.now().subtract(const Duration(hours: 2)),
        imageUrls: [
          'https://via.placeholder.com/300?text=Evidence+1',
          'https://via.placeholder.com/300?text=Evidence+2',
        ],
        status: 'investigating',
        severity: 'high',
        category: 'Trespassing',
        reporterName: 'John Smith',
        reporterPhone: '(555) 123-4567',
      ),
      Report(
        id: '2',
        title: 'Unauthorized Vehicle Entry',
        description:
            'Vehicle attempted to enter restricted zone without proper credentials.',
        location: 'Main Gate',
        latitude: 40.7130,
        longitude: -74.0065,
        reportedDate: DateTime.now().subtract(const Duration(hours: 5)),
        imageUrls: ['https://via.placeholder.com/300?text=Vehicle+Photo'],
        status: 'resolved',
        severity: 'medium',
        category: 'Unauthorized Access',
        reporterName: 'Sarah Johnson',
        reporterPhone: '(555) 234-5678',
      ),
      Report(
        id: '3',
        title: 'Property Damage Detected',
        description: 'Fence section damaged near the eastern perimeter.',
        location: 'East Perimeter',
        latitude: 40.7125,
        longitude: -74.0055,
        reportedDate: DateTime.now().subtract(const Duration(days: 1)),
        imageUrls: [
          'https://via.placeholder.com/300?text=Damage+Photo+1',
          'https://via.placeholder.com/300?text=Damage+Photo+2',
        ],
        status: 'pending',
        severity: 'medium',
        category: 'Vandalism',
        reporterName: 'Mike Chen',
        reporterPhone: '(555) 345-6789',
      ),
      Report(
        id: '4',
        title: 'Loitering Activity',
        description:
            'Multiple individuals observed loitering near restricted area.',
        location: 'South Sector',
        latitude: 40.7120,
        longitude: -74.0070,
        reportedDate: DateTime.now().subtract(const Duration(days: 2)),
        imageUrls: [],
        status: 'resolved',
        severity: 'low',
        category: 'Suspicious Activity',
        reporterName: 'Emma Davis',
        reporterPhone: '(555) 456-7890',
      ),
    ];
  }
}

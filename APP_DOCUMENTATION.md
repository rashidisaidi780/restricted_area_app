# Restricted Area Reporting System - Flutter App

A professional Flutter mobile application for reporting suspicious activities in restricted areas with photo evidence and location tracking.

## 🎯 Features

### 1. **home Screen**
- Overview of security statistics
- Recent incident reports with filtering
- Status indicators (Pending, Investigating, Resolved)
- Severity levels (Low, Medium, High, Critical)
- Quick access to all reports

### 2. **Report Incident Screen**
- Comprehensive incident reporting form
- Activity categorization:
  - Trespassing
  - Unauthorized Access
  - Vandalism
  - Suspicious Activity
  - Equipment Damage
  - Other
- Severity level selection
- Detailed description input
- **Location Information:**
  - Manual location name entry
  - GPS coordinates (latitude/longitude)
  - "Get Current Location" button for automatic GPS capture
- **Evidence Upload:**
  - Take photos with camera
  - Upload from gallery
  - Multiple photo support
  - Photo preview and removal
- Contact information (name, phone)
- Form validation

### 3. **Map Screen**
- Visual map interface (placeholder for Google Maps/Mapbox integration)
- Incident location markers with severity indicators
- Horizontal scrolling list of incidents by location
- Quick view of incident details from map

### 4. **Settings Screen**
- **Appearance:**
  - Dark/Light mode toggle
- **Notifications:**
  - Enable/disable notifications
  - Notification preferences (Report Updates, Security Alerts, Weekly Summary)
- **Permissions:**
  - Location access control
  - Camera access control
- **Language Selection:**
  - English, Spanish, French, German
- **About:**
  - Privacy Policy
  - Terms & Conditions
- **Help & Support:**
  - FAQ
  - Contact Support
- **Account:**
  - Logout functionality

## 🎨 Design & Theme

### Color Scheme
- **Light Mode:**
  - Primary: Deep Blue (#0D7BC4)
  - Secondary: Sky Blue (#40B0FF)
  - Accent: Light Sky Blue (#87CEEB)
  - Background: Alice Blue (#F0F8FF)

- **Dark Mode:**
  - Primary: Sky Blue (#40B0FF)
  - Secondary: Dodger Blue (#1E90FF)
  - Accent: Deep Blue (#0D7BC4)
  - Background: Dark Navy (#0A1F2E)

### UI Components
- Material 3 design system
- Bottom navigation bar with 4 tabs
- Floating action button for quick reporting
- Cards with elevation and rounded corners
- Gradient containers for home
- Filter chips for report filtering
- Status and severity badges

## 📊 Mocked Data

The app includes sample incident data with:
- 4 pre-loaded reports
- Realistic locations and descriptions
- Various severity and status levels
- Multiple evidence photos per incident
- Complete incident metadata (date, reporter info, coordinates)

### Sample Data Includes:
1. **Suspicious Person Spotted** - North Sector (High Severity, Investigating)
2. **Unauthorized Vehicle Entry** - Main Gate (Medium Severity, Resolved)
3. **Property Damage Detected** - East Perimeter (Medium Severity, Pending)
4. **Loitering Activity** - South Sector (Low Severity, Resolved)

## 🛠️ Technical Stack

- **Framework:** Flutter 3.11+
- **Language:** Dart
- **Design Pattern:** MVC with StatefulWidget
- **State Management:** setState (can be upgraded to BLoC or Provider)
- **Responsive Design:** Works on mobile, tablet, and desktop Flutter apps

## 📱 Navigation Structure

```
Main App
├── home Screen (Home)
│   ├── Statistics Card
│   ├── Filter Chips
│   └── Reports List
├── Report Screen (New Incident)
│   ├── Form Fields
│   ├── Location Picker
│   └── Photo Upload
├── Map Screen (Locations)
│   ├── Map Visualization
│   └── Incident List
└── Settings Screen
    ├── Appearance
    ├── Notifications
    ├── Permissions
    ├── Language
    ├── About
    └── Support
```

## 🔧 Project Structure

```
lib/
├── main.dart                 # App entry point & theme management
├── models/
│   └── report_model.dart     # Data models & mock data provider
├── theme/
│   └── app_theme.dart        # Light/Dark theme definitions
└── screens/
    ├── home_screen.dart      # home
    ├── report_screen.dart    # Incident reporting
    ├── map_screen.dart       # Location visualization
    └── settings_screen.dart  # User settings
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.11 or higher
- Dart SDK 3.11 or higher

### Installation

1. **Clone or navigate to project:**
```bash
cd "d:\my project\APPS\restricted_area_app"
```

2. **Get dependencies:**
```bash
flutter pub get
```

3. **Run the app:**
```bash
flutter run
```

4. **Build for production:**
```bash
# Android
flutter build apk
flutter build appbundle

# iOS
flutter build ios

# Web
flutter build web
```

## 📋 Form Validation

The Report Screen includes validation for:
- Activity Title (required)
- Category (required)
- Severity Level (required)
- Detailed Description (required)
- Reporter Name (required)
- Location fields (optional but recommended)

## 🔐 Features for Future Enhancement

1. **Backend Integration:**
   - REST API integration for report submission
   - Real database instead of mock data
   - User authentication

2. **Location Services:**
   - Google Maps integration
   - Real GPS coordinates
   - Location search and autocomplete

3. **Camera & Gallery:**
   - Actual photo capture from device camera
   - Gallery integration
   - Image compression
   - Photo metadata preservation

4. **Push Notifications:**
   - Real push notification system
   - Report status updates
   - Security alerts

5. **Advanced Filtering:**
   - Date range filtering
   - Severity-based sorting
   - Custom search

6. **Offline Support:**
   - Local database with Sqflite
   - Offline form submission queue
   - Sync when connectivity restored

## 📝 Customization

### Changing Theme Colors
Edit `lib/theme/app_theme.dart` to customize colors in `AppTheme` class.

### Adding New Report Categories
Update the `categories` list in `lib/screens/report_screen.dart`.

### Modifying Mock Data
Edit `MockDataProvider.getMockedReports()` in `lib/models/report_model.dart`.

## 🐛 Known Limitations

1. Map screen is a placeholder - requires Google Maps API key or Mapbox integration
2. Photo upload uses placeholder URLs - requires camera and gallery integration
3. Location selection doesn't use actual GPS - requires location_plus package
4. Form submission is mocked - requires backend API integration
5. No real database - uses in-memory mock data

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📄 License

This project is provided as-is for development and learning purposes.

## 👨‍💻 Author Notes

This is a production-ready UI template with:
- Professional design patterns
- Comprehensive error handling structure
- Scalable file organization
- Material 3 compliance
- Accessibility considerations
- Both light and dark themes
- Mocked data for immediate testing

The app is ready to be connected to a real backend and integrated with actual location and camera services.

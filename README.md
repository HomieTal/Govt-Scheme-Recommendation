# 🏛️ Family-Centric Government Scheme Recommendation App

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-3.0.0+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0.0+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

**A comprehensive Flutter application that provides personalized government scheme recommendations based on family demographics and eligibility criteria.**

[Features](#-features) • [Screenshots](#-screenshots) • [Installation](#-installation) • [Usage](#-usage) • [Architecture](#-architecture) • [Contributing](#-contributing)

</div>

---

## 📋 Overview

The Family-Centric Government Scheme Recommendation App is designed to simplify access to government welfare schemes by providing personalized recommendations based on family member demographics. Users can log in using their ration card number and receive tailored scheme suggestions for each family member based on their age, gender, and other eligibility criteria.

### 🎯 Key Highlights

- **Ration Card Based Authentication** - Secure login using ration card credentials
- **Smart Scheme Matching** - Intelligent algorithm to match schemes with eligible family members
- **Family Management** - Add and manage multiple family members with detailed profiles
- **Comprehensive Scheme Database** - Wide range of government schemes across various categories
- **Beautiful Material 3 UI** - Modern, intuitive interface with smooth animations
- **Persistent Data** - Local storage for seamless user experience

---

## ✨ Features

### 🔐 Authentication
- Ration card number-based login system
- Secure password protection
- Terms and conditions agreement
- Smooth login animations

### 👨‍👩‍👧‍👦 Family Management
- Add multiple family members
- Detailed member profiles (name, age, gender, relation, occupation, income)
- Edit and delete family members
- Visual family member cards with icons
- Family statistics dashboard

### 🎁 Scheme Recommendations
- Personalized scheme suggestions for each family member
- Age and gender-based filtering
- Multiple scheme categories:
  - 👶 Child Development
  - 👩 Women Empowerment
  - 👴 Senior Citizens
  - 💼 Employment & Skill Development
  - 🏥 Healthcare
  - 🎓 Education
  - 💰 Financial Assistance
- Detailed scheme information including:
  - Benefits
  - Eligibility criteria
  - Application process
  - Ministry details

### 📊 Dashboard & Analytics
- Quick statistics overview
- Total family members count
- Eligible schemes count
- Recent activity tracking
- Visual progress indicators

### 👤 User Profile
- View ration card details
- Family head information
- Ration card type display
- Issue date and location
- Logout functionality

---

## 📱 Screenshots

<div align="center">

| Splash Screen | Login | Home Dashboard |
|:---:|:---:|:---:|
| ![Splash](screenshots/splash.png) | ![Login](screenshots/login.png) | ![Home](screenshots/home.png) |

| Family Members | Scheme Details | All Schemes |
|:---:|:---:|:---:|
| ![Family](screenshots/family.png) | ![Scheme](screenshots/scheme.png) | ![All Schemes](screenshots/schemes.png) |

</div>

---

## 🚀 Installation

### Prerequisites

Before you begin, ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=3.0.0)
- [Dart SDK](https://dart.dev/get-dart) (>=3.0.0)
- [Android Studio](https://developer.android.com/studio) / [VS Code](https://code.visualstudio.com/)
- Android SDK / Xcode (for iOS development)

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/scheme_recommendation_app.git
   cd scheme_recommendation_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   # For development
   flutter run
   
   # For release build
   flutter run --release
   ```

4. **Build APK (Android)**
   ```bash
   flutter build apk --release
   ```

5. **Build iOS**
   ```bash
   flutter build ios --release
   ```

---

## 💻 Usage

### Login Credentials

Use the following test credentials to explore the app:

| Ration Card Number | Password |
|:---|:---|
| `1234567890` | `password123` |

### Adding Family Members

1. Navigate to the **Family** tab
2. Click the **+ Add Member** button
3. Fill in member details:
   - Name
   - Age
   - Gender
   - Relation to head
   - Occupation
   - Annual income
4. Save the member

### Viewing Eligible Schemes

1. Go to the **Home** tab
2. View personalized recommendations for each family member
3. Tap on a scheme card to see full details
4. Navigate to **Schemes** tab to browse all available schemes

---

## 🏗️ Architecture

### Project Structure

```
lib/
├── main.dart                    # App entry point
├── data/
│   ├── mock_data.dart          # Mock ration card data
│   └── schemes_data.dart       # Government schemes database
├── models/
│   ├── family_member.dart      # Family member model
│   ├── ration_card.dart        # Ration card model
│   └── scheme.dart             # Scheme model
├── providers/
│   └── family_provider.dart    # State management provider
├── screens/
│   ├── splash_screen.dart      # Initial splash screen
│   ├── login_screen.dart       # Authentication screen
│   ├── home_screen.dart        # Main dashboard
│   ├── family_members_screen.dart
│   ├── all_schemes_screen.dart
│   └── profile_screen.dart
└── widgets/
    ├── family_member_card.dart # Reusable member card
    ├── scheme_card.dart        # Reusable scheme card
    └── stats_card.dart         # Statistics widget
```

### State Management

The app uses **Provider** for state management, ensuring efficient and scalable state handling across the application.

### Key Technologies

- **Flutter** - UI framework
- **Provider** - State management
- **Shared Preferences** - Local data persistence
- **Material 3** - Modern design system
- **Intl** - Internationalization support

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.6
  provider: ^6.1.1              # State management
  shared_preferences: ^2.2.2    # Local storage
  intl: ^0.18.1                 # Date formatting

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.1
  flutter_launcher_icons: ^0.13.1
```

---

## 🎨 Design System

### Color Scheme
- **Primary Color**: `#1E88E5` (Blue)
- **Material 3**: Modern, adaptive design
- **Smooth Animations**: Enhanced user experience

### Typography
- **Material 3 Typography** with custom themes
- Consistent spacing and padding
- Responsive layouts

---

## 🔄 Future Enhancements

- [ ] Real API integration for scheme data
- [ ] Multi-language support (Hindi, regional languages)
- [ ] Push notifications for new schemes
- [ ] Document upload for scheme applications
- [ ] Application tracking system
- [ ] Offline mode with sync
- [ ] Dark mode support
- [ ] Advanced filtering and search
- [ ] Scheme comparison feature
- [ ] Social sharing of schemes
- [ ] In-app tutorials and help section

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add some amazing feature'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

### Code Style

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Ensure all tests pass before submitting PR

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👥 Authors

- **Your Name** - *Initial work* - [@yourusername](https://github.com/yourusername)

---

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Government of India for scheme information
- Open-source community for valuable packages
- All contributors who help improve this project

---

## 📞 Support

For support, email your.email@example.com or open an issue in the repository.

---

## 📊 Project Stats

![GitHub stars](https://img.shields.io/github/stars/yourusername/scheme_recommendation_app?style=social)
![GitHub forks](https://img.shields.io/github/forks/yourusername/scheme_recommendation_app?style=social)
![GitHub issues](https://img.shields.io/github/issues/yourusername/scheme_recommendation_app)
![GitHub pull requests](https://img.shields.io/github/issues-pr/yourusername/scheme_recommendation_app)

---

<div align="center">

**⭐ If you find this project helpful, please consider giving it a star! ⭐**

Made with ❤️ and Flutter

</div>

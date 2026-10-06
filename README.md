# 🌍 Luma Travel App

A modern travel discovery mobile application built with **Flutter** and **Dart**.

The application is inspired by the provided travel app UI design and focuses on destination discovery, tour exploration, search, destination details, and user profiles.

---

## 📱 Project Overview

Luma Travel is a Flutter-based travel application designed with a modern, clean, and responsive mobile UI.

The main goal is to transform the reference design into a functional Android application that can eventually be installed on a physical Android phone and published to the Google Play Store.

---

## ✨ Features

### 🏠 Home

- Welcome header
- Popular destinations
- Travel categories
- Recommended tours
- Horizontal scrolling cards
- Bottom navigation

### 🌍 Destinations

- Destination images
- Destination names
- Country/location
- Destination descriptions
- Destination detail screen

### 🗺️ Tours

- Tour recommendations
- Tour images
- Tour location
- Tour duration
- Tour season
- Difficulty level
- Tour details

### 🔎 Search

- Search destinations
- Real-time filtering
- Open destination details from search results

### 👤 Profile

- User profile
- Favorites
- My tours
- Settings

---

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Flutter | Mobile application framework |
| Dart | Programming language |
| Android Studio | Development environment |
| Material 3 | UI components |
| Git | Version control |
| GitHub | Source code management |

---

## 📂 Project Structure

```text
travel_app/
│
├── android/
├── ios/
├── test/
│
├── lib/
│   │
│   ├── main.dart
│   ├── app.dart
│   │
│   ├── models/
│   │   ├── destination.dart
│   │   └── tour.dart
│   │
│   ├── data/
│   │   └── sample_data.dart
│   │
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── destination_screen.dart
│   │   ├── search_screen.dart
│   │   └── profile_screen.dart
│   │
│   ├── widgets/
│   │   ├── destination_card.dart
│   │   ├── tour_card.dart
│   │   └── category_card.dart
│   │
│   └── theme/
│       └── app_theme.dart
│
├── assets/
│   └── images/
│
├── pubspec.yaml
├── README.md
└── .gitignore
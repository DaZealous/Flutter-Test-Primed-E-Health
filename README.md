# Flutter Developer Assessment

A Flutter application built as a coding task to demonstrate implementation of a login flow, state management, and navigation.

## Features

### Login Screen
- Email and password validation:
    - Ensures a valid email format.
    - Password must have at least 8 characters.
- Displays error messages for validation failures.

### Home Screen
- Displays a list of items fetched from mock data (local JSON).

### Detail Screen
- Navigates to a detail view displaying more information about the selected item.

## Tools & Libraries Used

- **State Management**: [Riverpod](https://pub.dev/packages/riverpod)
- **Dependency Injection**: [GetIt](https://pub.dev/packages/get_it) and [Injectable](https://pub.dev/packages/injectable)
- **Animations**: Built-in Flutter AnimationController
- **Testing**: Flutter's testing framework

## Bonus Features
- Added loading indicators during navigation and data fetching.
- Unit tests for email validation.

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/DaZealous/Flutter-Test-Primed-E-Health.git

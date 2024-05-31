# News Application

This is a Flutter-based news application that adheres to the Domain-Driven Design (DDD) principles. It allows users to browse the latest news seamlessly, save news articles to their saved list, and search for news based on categories.

## Features

- **Seamless News Browsing**: Users can browse the latest news articles with a smooth and intuitive interface.
- **Save News**: Users can save their favorite news articles to a saved list for easy access later.
- **Category-wise News**: Users can search and filter news articles based on different categories.

## Packages Used

The application utilizes several Flutter packages to enhance functionality and user experience. Below is a list of the main packages used:

- **[bloc: ^8.1.4](https://pub.dev/packages/bloc)**: State management library.
- **[build_runner](https://pub.dev/packages/build_runner)**: Used for code generation.
- **[carousel_slider: ^4.2.1](https://pub.dev/packages/carousel_slider)**: Provides a carousel slider widget.
- **[cupertino_icons: ^1.0.2](https://pub.dev/packages/cupertino_icons)**: Cupertino icons for iOS design.
- **[dartz: ^0.10.1](https://pub.dev/packages/dartz)**: Functional programming in Dart.
- **[dio: ^5.4.3+1](https://pub.dev/packages/dio)**: HTTP client for making API calls.
- **[flutter](https://flutter.dev)**: SDK for building natively compiled applications for mobile from a single codebase.
- **[flutter_bloc: ^8.1.5](https://pub.dev/packages/flutter_bloc)**: Integration of Bloc state management for Flutter.
- **[freezed](https://pub.dev/packages/freezed)**: Code generator for unions/pattern-matching/copy.
- **[freezed_annotation](https://pub.dev/packages/freezed_annotation)**: Annotations for the Freezed package.
- **[get_it](https://pub.dev/packages/get_it)**: Service locator for dependency injection.
- **[hive_flutter: ^1.1.0](https://pub.dev/packages/hive_flutter)**: Lightweight and fast key-value database written in pure Dart.
- **[injectable: ^1.5.3](https://pub.dev/packages/injectable)**: Dependency injection library.
- **[intl: ^0.19.0](https://pub.dev/packages/intl)**: Internationalization and localization facilities.
- **[json_annotation](https://pub.dev/packages/json_annotation)**: Classes and helper functions that support JSON code generation.
- **[json_serializable](https://pub.dev/packages/json_serializable)**: Generates JSON serialization code.
- **[shimmer: ^3.0.0](https://pub.dev/packages/shimmer)**: Adds shimmer effect to indicate loading.
- **[url_launcher: ^6.2.6](https://pub.dev/packages/url_launcher)**: Launch URLs in the mobile platform.

### Dev Dependencies

- **[flutter_lints: ^2.0.0](https://pub.dev/packages/flutter_lints)**: Official Dart linter for Flutter apps, package, and plugins.
- **[flutter_test](https://pub.dev/packages/flutter_test)**: Testing framework for Flutter.
- **[hive_generator: ^2.0.1](https://pub.dev/packages/hive_generator)**: Generates type adapters for Hive.
- **[injectable_generator: ^1.5.3](https://pub.dev/packages/injectable_generator)**: Generates code for Injectable.

## Getting Started

To get started with the application, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd news_app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate code**:
   ```bash
   flutter pub run build_runner build
   ```

4. **Update API Key**:
   - If you want to run this application, you should create an account at [News API](https://newsapi.org/) and obtain an API key.
   - Update the API key in `lib/core/api_key.dart` with your newly obtained API key.
   
   ```dart
   // lib/core/api_key.dart
   const String apiKey = 'YOUR_API_KEY_HERE';
   ```

5. **Run the application**:
   ```bash
   flutter run
   ```

## Directory Structure

```plaintext
lib/
├── application/                # Application layer (Bloc, state management)
│   ├── blocs/                  # Blocs for state management
├── core/                       # Core layer (API key, constants)
│   ├── api_key.dart            # API key file
├── domain/                     # Domain layer (Entities, repositories, use cases)
│   ├── entities/               # Entities representing core business objects
│   ├── repositories/           # Repository interfaces
│   ├── usecases/               # Business logic and use cases
├── infrastructure/             # Infrastructure layer (Data sources, API clients)
│   ├── data_sources/           # Remote and local data sources
│   ├── repositories/           # Repository implementations
├── presentation/               # Presentation layer (UI, screens, widgets)
│   ├── screens/                # UI screens
│   ├── widgets/                # Reusable widgets
├── main.dart                   # Entry point of the application
```

## Contributing

Contributions are welcome! If you find any bugs or have any suggestions for improvements, feel free to create an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

Enjoy using the News Application! If you have any questions or feedback, please feel free to reach out.
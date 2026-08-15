# Tanlu Management

Tanlu Management is a comprehensive Flutter application designed for class and student management. It provides a suite of tools for tracking attendance, managing leave requests, maintaining a feed for class updates, and handling personal/student profiles.

## Architecture & Project Structure

The project follows Clean Architecture principles, ensuring a separation of concerns, scalability, and maintainability. The codebase is organized into three primary directories under `lib/`:

### 1. `core/`
This directory contains the foundational elements of the application that are feature-independent.
*   **`base/`**: Base classes for Blocs and UI states.
*   **`constants/`**: Application-wide constants (e.g., API keys, limits, enumerations).
*   **`network/`**: Networking setup (Dio configuration, interceptors).
*   **`router/`**: Application routing configurations using `go_router`.
*   **`themes/`**: Styling, typography, colors, and layout constraints.
*   **`widgets/`**: Reusable generic UI components (buttons, text fields, dialogs, snackbars).

### 2. `features/`
This directory houses the core functionality of the app, modularized by feature. Each feature follows a consistent internal structure (Data, Domain, Presentation):
*   **`app/`**: App-level state, initialization, and root widgets.
*   **`auth/`**: Authentication (login, logout, session management).
*   **`attendance/`**: Tracking and recording student attendance.
*   **`leave/`**: Managing leave requests, approvals, and history.
*   **`feed/`**: Class news feed, announcements, media sharing, and commenting.
*   **`notification/`**: Push notifications and in-app alerts.
*   **`person/`**: Profiles and user settings.
*   **`settings/`**: Application settings (e.g., language selection).

### 3. `shared/`
This directory contains utilities and services that are shared across multiple features but are more specific than core components.
*   **`di/`**: Dependency Injection setup (`get_it` and `injectable`).
*   **`services/`**: Shared services (e.g., WebSocket service for real-time updates, local storage service).
*   **`utils/`**: Helper functions (date formatting, string manipulations, media processing).

---

## Getting Started

### Prerequisites
*   [Flutter SDK](https://docs.flutter.dev/get-started/install) (Version `^3.11.3` or compatible)
*   Dart SDK

### Installation

1.  **Clone the repository:**
    ```bash
    git clone <repository_url>
    cd tanlu_management
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

### Code Generation

This project relies heavily on code generation for JSON serialization, Immutable states (`freezed`), API clients (`retrofit`), Dependency Injection (`injectable`), and Localization (`gen-l10n`).

**1. Generate Core Files (Models, DI, APIs):**
Run the `build_runner` to generate `.g.dart` and `.freezed.dart` files. The `--delete-conflicting-outputs` flag ensures old generated files are removed to prevent conflicts.
```bash
dart run build_runner build --delete-conflicting-outputs
```

**2. Generate Localization (L10n):**
We use Flutter's built-in localization. To generate the translation classes from the `.arb` files (located in `lib/l10n/`), run:
```bash
flutter gen-l10n
```
*Note: This generates `app_localizations.dart` and related files inside `lib/l10n/`. Make sure to run this whenever you add or modify translation keys in `app_en.arb` or `app_vi.arb`.*

### Running the App

After completing the code generation steps, you can run the app on your connected device or emulator:
```bash
flutter run
```

## Additional Commands

*   **Generate Native Splash Screens:**
    If you update the splash screen assets in `pubspec.yaml`, regenerate the native splash screens using:
    ```bash
    dart run flutter_native_splash:create
    ```

*   **Generate App Icons:**
    If you update the launcher icon assets, regenerate the native icons using:
    ```bash
    dart run flutter_launcher_icons
    ```

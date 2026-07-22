# Tanlu Management

A comprehensive Flutter application for management and education operations.

## 📁 Project Architecture

The project is thoughtfully structured into three main directories under `lib/` to promote scalability and maintainability:

* **`core/`**
  Contains core infrastructure and foundational elements. This includes network clients (Dio), routing configurations (GoRouter), theme definitions (colors, fonts), dependency injection setup, and global error handling. It is the backbone of the application.

* **`shared/`**
  Contains reusable components, common widgets, models, and utilities that are used across multiple features. If a UI widget, extension, or helper function is needed in more than one feature, it belongs here.

* **`features/`**
  Contains the actual business features of the application (e.g., Auth, Home, Attendance, Notification, Student, Feed, etc.). Each feature is self-contained and typically follows a layered architecture (Presentation, Domain, Data) to separate concerns.

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>= 3.11.3)
- Dart SDK

### Installation

1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   ```

2. **Get dependencies:**
   ```bash
   flutter pub get
   ```

---

## 🛠️ Code Generation

This project heavily relies on code generation for immutable state (`freezed`), JSON serialization (`json_serializable`), and dependency injection (`injectable`). 

Whenever you pull new code or make changes to models, routing, or DI configurations, **you must run the build runner**:

```bash
dart run build_runner build --delete-conflicting-outputs
```
*(The `--delete-conflicting-outputs` flag ensures that any old or conflicting generated files are safely overwritten).*

---

## 🌍 Localization (L10n)

The application supports multiple languages (English and Vietnamese). All localization strings are stored in `.arb` files located at:
- `lib/l10n/app_vi.arb`
- `lib/l10n/app_en.arb`

Whenever you **add, modify, or delete** any keys in these `.arb` files, you need to generate the localization dart classes:

```bash
flutter gen-l10n
```
*Flutter will automatically read the `l10n.yaml` file and generate the necessary `AppLocalizations` classes that are used throughout the UI.*

---

## 📦 Key Dependencies
- **State Management:** `flutter_bloc`
- **Routing:** `go_router`
- **Networking:** `dio`
- **Dependency Injection:** `get_it`, `injectable`
- **Data Models:** `freezed`, `json_serializable`
- **Local Storage:** `shared_preferences`

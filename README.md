# Flutter Project: Tinder with Chuck Norris

## **Setting up Flutter on macOS**

- [X] **1. Install Flutter SDK**
    - [X] Download the Flutter SDK from [Flutter website](https://flutter.dev/docs/get-started/install/macos).
    - [X] Extract and place the `flutter` directory in a suitable location (e.g., `~/development`).

- [X] **2. Update PATH**
    - [X] Edit `~/.zshrc` (or `~/.bashrc` if using bash).
    - [X] Add `export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"`.
    - [X] Save and run `source ~/.zshrc` (or `source ~/.bashrc`).

- [X] **3. Verify Installation**
    - [X] Run `flutter doctor` and resolve any issues.

## **Implementing "Tinder with Chuck Norris" App**

### **Assignment 1**

#### **Setup:**

- [ ] **1. Initialize a Flutter Project**
    - [ ] Run `flutter create tinder_chuck_norris` and navigate to the project.

- [ ] **2. Add Dependencies**
    - [ ] Add `http`, `dio`, `json_serializable` or `freezed`, and `flutter_lints` to `pubspec.yaml`.

#### **Data Layer:**

- [ ] **3. Create Joke Model**
    - [ ] Use `json_serializable` or `freezed` for data serialization.

- [ ] **4. Write a Service Class**
    - [ ] Fetch random joke from the API using `http` or `dio`.

#### **UI:**

- [ ] **5. Build App Structure**
    - [ ] Use `MaterialApp`, `Scaffold`, and `SafeArea`.

- [ ] **6. Implement Main Screen**
    - [ ] Display a joke card.
    - [ ] Button to fetch a new joke.
    - [ ] (Optional) Swipe to change joke.

#### **Documentation:**

- [ ] **7. Write README**
    - [ ] Add a project description.
    - [ ] Attach screenshots.
    - [ ] Attach the APK.

### **Assignment 2**

#### **Data Persistence:**

- [ ] **1. Store Jokes**
    - [ ] Use `shared_preferences` or `sqflite` for local storage.
    - [ ] (Optional) Use `firebase` for remote storage.

#### **Additional UI & Features:**

- [ ] **2. Favorite Feature**
    - [ ] Add a button to save jokes.
    - [ ] Create a screen to view saved jokes.

- [ ] **3. Network Handling**
    - [ ] Implement behavior for no network connection.

- [ ] **4. App Icon**
    - [ ] Create a custom icon using `flutter_launcher_icons`.

#### **Architecture & Code Quality:**

- [ ] **5. Implement State Management**
    - [ ] Choose from `provider`, `riverpod`, `bloc`, or `mobx`.

- [ ] **6. Separate UI from Logic**
    - [ ] Structure the app's directory for clear separation.

- [ ] **7. Implement Crashlytics**
    - [ ] Handle app exceptions.

#### **Documentation:**

- [ ] **8. Update README**
    - [ ] Reflect new features and changes.

## **Technical Quiz Preparation**

- [ ] **1. Review Flutter Documentation**
    - [ ] Familiarize yourself with widgets and core concepts.

- [ ] **2. Understand State Management**
    - [ ] Dive into the state management solution you've used.

- [ ] **3. Check for Linting Issues**
    - [ ] Ensure your code adheres to `flutter_lints` and understand any ignores.

- [ ] **4. Test the App**
    - [ ] Ensure stability and handle edge cases.

Good luck with your project and exam!


# tinder_with_chuck_norris

Tinder with Chuck Norris - A project for CPMDF

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



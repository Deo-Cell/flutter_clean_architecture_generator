#!/bin/bash

# Ask for project name
read -p "🎯 Flutter project name: " project_name

# Create Flutter project
echo "🚀 Creating Flutter project '$project_name'..."
flutter create $project_name

# Move into project directory
cd $project_name

# Clean default lib/ content
rm -rf lib/*
echo "🧹 Cleaned 'lib/' directory."

# Build Clean Architecture structure
echo "🏗️ Building Clean Architecture..."

# Create core directories
echo "🔄 Creating core directories..."
mkdir -p lib/core/{errors,utils}
sleep 3
echo "✅ Core directories created!"

# Create domain directories
echo "🔄 Creating domain directories..."
mkdir -p lib/domain/{entities,repositories,use_cases}
sleep 3
echo "✅ Domain directories created!"

# Create data directories
echo "🔄 Creating data directories..."
mkdir -p lib/data/{datasources,models,repositories}
sleep 3
echo "✅ Data directories created!"

# Create presentation directories
echo "🔄 Creating presentation directories..."
mkdir -p lib/presentation/{pages,widgets,providers,theme}
sleep 3
echo "✅ Presentation directories created!"

# Generate base files
echo "📝 Generating base files..."

# main.dart
echo "import 'package:flutter/material.dart';
import 'core/injection.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '$project_name',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(body: Center(child: Text('Clean Arch Ready!'))),
    );
  }
}" > lib/main.dart

# Dependency injection setup
echo "import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Example: getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}" > lib/core/injection.dart

# Display the packages to add at the end
echo ""
echo "🎉 Great! Your Clean Architecture structure is ready."
echo "🔧 Now, please add the following dependencies to your 'pubspec.yaml':"
echo ""
echo "📦 Dependencies:"
echo "  - get_it: ^7.6.0"
echo "  - dio: ^5.3.0"
echo "  - hive: ^2.2.3"
echo "  - connectivity_plus: ^3.0.0"
echo "  - cupertino_icons: ^1.0.8"
echo ""
echo "⚙️ Dev Dependencies:"
echo "  - build_runner: ^2.4.0"
echo "  - hive_generator: ^1.1.0"
echo "  - flutter_lints: ^5.0.0"
echo ""
echo "👉 Don't forget to run 'flutter pub get' after adding the dependencies!"
echo "🎉 Project '$project_name' is all set up!"
echo "👉 Command to open in VS Code: code ."

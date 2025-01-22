# Flutter Project Generator with Clean Architecture

![Flutter Logo](image.png)

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Required Dependencies](#required-dependencies)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This Bash script automates the creation of a Flutter project following Clean Architecture principles. It generates the folder structure and base files to help you develop modular and maintainable applications.

## Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) must be installed on your system.
- A Unix terminal (Linux or macOS) or [Git Bash](https://gitforwindows.org/) on Windows.
- [Git](https://git-scm.com/downloads) should be installed for version control.

## Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/your-repo.git
   ```

2. Navigate to the project directory:

   ```bash
   cd your-repo
   ```

3. Grant execution permissions to the script:

   ```bash
   chmod +x generate_flutter_clean_architecture.sh
   ```

## Usage

1. Run the script:

   ```bash
   ./generate_flutter_clean_architecture.sh
   ```

2. Enter your Flutter project name when prompted:

   ```bash
   🎯 Flutter project name: my_project
   ```

3. The script will create a new Flutter project with the Clean Architecture structure.

## Project Structure

The script generates the following structure:

```
my_project/
├── lib/
│   ├── core/
│   │   ├── errors/
│   │   ├── utils/
│   ├── domain/
│   │   ├── entities/
│   │   ├── repositories/
│   │   ├── use_cases/
│   ├── data/
│   │   ├── datasources/
│   │   ├── models/
│   │   ├── repositories/
│   ├── presentation/
│   │   ├── pages/
│   │   ├── widgets/
│   │   ├── providers/
│   │   ├── theme/
│   ├── main.dart
```

## Required Dependencies

After creating the project, add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get_it: ^7.6.0
  dio: ^5.3.0
  hive: ^2.2.3
  connectivity_plus: ^3.0.0
  cupertino_icons: ^1.0.8

dev_dependencies:
  build_runner: ^2.4.0
  hive_generator: ^1.1.0
  flutter_lints: ^5.0.0
```

Don't forget to run:

```bash
flutter pub get
```

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository:

   ```bash
   git clone https://github.com/your-username/your-repo.git
   ```

2. Create a new branch for your feature or bug fix:

   ```bash
   git checkout -b feature-name
   ```

3. Commit your changes:

   ```bash
   git commit -m "Add new feature"
   ```

4. Push the branch to your forked repository:

   ```bash
   git push origin feature-name
   ```

5. Open a pull request to the main repository.

Thank you for your contributions!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

*Note: This script is inspired by similar projects, such as the [Flutter Clean Architecture Template](https://github.com/AhmedEmadElDeen14/Clean-Architecture-Template) and the [Flutter Clean Architecture Script](https://github.com/Joy-sameza/flutter-clean-architecture-script).*

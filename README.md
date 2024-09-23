# Flutter Equatable Example

This repository demonstrates how to use the [equatable](https://pub.dev/packages/equatable) package in a Flutter project. The `equatable` package simplifies equality comparisons between Dart objects, reducing boilerplate for overriding `==` and `hashCode`.

## What is Equatable?

In Dart, objects are compared by reference, so to compare objects by their field values (like `name` and `age`), you usually override `==` and `hashCode`. The `equatable` package does this automatically, making equality comparisons cleaner and easier.

## Project Overview

This Flutter app demonstrates the use of `equatable` to compare two `Person` objects. When the floating action button is pressed, the app checks if two `Person` instances with the same properties (`name` and `age`) are equal.

### Key Features:
- The `Person` class extends `Equatable` and overrides the `props` method to specify the fields for comparison.
- The `==` operator compares the property values (`name` and `age`), not the object references.
- Logs the hash codes and comparison result when the floating action button is pressed.

## How to Run the Project

1. Clone the repository:
   ```bash



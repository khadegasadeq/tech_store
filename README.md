# Tech Store

## Student Information

**Name:** Khadega Sadeq Aldhabi

**Major:** Software Engineering - Level 3

---

## Project Overview

Tech Store is a simple Flutter e-commerce application developed as a university assignment.

The application allows users to browse products, view product details, add products to the shopping cart, and save products to favorites.

State management is implemented using Provider.

---

## Features

* View all products
* Browse product categories
* View product details
* Add products to cart
* Add products to favorites
* Remove products from cart
* Remove products from favorites
* Cart counter updates automatically using Provider

---

## Technologies Used

* Flutter
* Dart
* Provider (State Management)
* HTTP (API Integration)

---

## API Integration

This project uses a real REST API instead of static data.

Products are fetched from:

https://fakestoreapi.com/products

Data is retrieved using HTTP GET request and converted from JSON using a Product model.

---

## Loading State

A loading indicator is shown while fetching data from the API to improve user experience.

---

## Project Structure

* Home Screen
* Categories Screen
* Category Products Screen
* Product Details Screen
* Cart Screen
* Favorites Screen

---

## Live Demo

Netlify Deployment:

https://sparkly-duckanoo-ef1b77.netlify.app/

---

## How to Run

1. Clone the repository.
2. Open the project in VS Code or Android Studio.
3. Run:

flutter pub get

4. Start the application:

flutter run

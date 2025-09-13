
# 🛍️ ecommerce_user

A modern Flutter e-commerce application for seamless shopping, featuring secure authentication, live order tracking, push notifications, and integrated payments.

---

## 📌 Table of Contents
1. [Features](#features)
2. [Screenshots](#screenshots)
3. [Project Structure](#project-structure)
4. [Requirements](#requirements)
5. [Getting Started](#getting-started)
6. [License](#license)

---

## ✨ Features

- 🔐 **Authentication** – Email/password & social login support
- 🛒 **Product Catalog** – Browse products by category with images and details
- 📦 **Order Tracking** – Live tracking of delivery using OpenStreetMap
- 💳 **Stripe Payments** – Secure checkout with Stripe integration
- 🔔 **Push Notifications** – Real-time notifications via OneSignal
- 📍 **Map Integration** – Delivery location displayed on map

---

## 🖼️ Screenshots

| Title               | Screenshot |
|---------------------|------------|
| 🏠 Home Screen      | <img src="https://github.com/user-attachments/assets/c011790c-ea68-437b-8818-dd4278cc94c2" width="300"> |
| 🔐 Categories       | <img src="https://github.com/user-attachments/assets/5ca7ce38-75d7-4e82-ad05-9056f5ae2c70" width="300"> |
| 🛍️ Onboading        | <img src="https://github.com/user-attachments/assets/d08c45dd-a725-45a7-9d06-4fe6b984a368" width="300"> |
| 🔐 Login /SignUp    | <img src="https://github.com/user-attachments/assets/1ec8b2e6-24dc-4cee-b2c1-dbf321bccc8e" width="300"> |
|     Prodcut          | <img src="https://github.com/user-attachments/assets/e6d2d38a-a5bb-420d-af98-c4d7f708649f" width="300"> |

---

## 📁 Project Structure

```
/lib
├── core                  # App-wide configs and utilities
├── data                  # Models and repositories
├── view_models           # MVVM ViewModels
├── screens               # UI screens
├── services              # API, Stripe, OneSignal, Map services
└── widgets               # Reusable widgets
```

---

## 🛠️ Requirements

- Flutter SDK
- Stripe account & API keys
- OneSignal app ID & REST key
- OpenStreetMap access (via `flutter_map` or similar)
- Backend for Auth (e.g., Firebase Auth or custom API)

---
## ⚠️ Server Status

Please note: Due to a server issue, the backend API is currently down and not functional. Our team is actively working on a fix, and the API will be restored soon.

---
## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/mjad4780/ecommerce_user.git
   cd ecommerce_user
   ```
2. **Install dependencies**
   ```bash
   flutter pub get
   ```
3. **Configure environment variables**
   - `STRIPE_API_KEY`
   - `ONESIGNAL_APP_ID`, `ONESIGNAL_REST_KEY`
   - Map configuration if needed
4. **Run the app**
   ```bash
   flutter run
   ```

---

## 📄 License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

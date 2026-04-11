# 🛍️ Marketi — E-Commerce App

<div align="center">

![Version](https://img.shields.io/badge/version-1.0-blue)
![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20Android-lightgrey)
![Type](https://img.shields.io/badge/type-Shopping%20App-orange)

Marketi is a mobile e-commerce app that lets users browse products, manage a cart, place orders, and manage their account — with a smooth onboarding, authentication, and personalized discovery experience.

</div>

---

## 📋 Table of Contents

- [Overview](#overview)
- [Onboarding & Authentication](#1-onboarding--authentication)
- [Home Screen](#2-home-screen)
- [Search & Discovery](#3-search--discovery)
- [Product](#4-product)
- [Cart & Checkout](#5-cart--checkout)
- [Profile & Account](#6-profile--account)
- [Additional Features](#7-additional-features)
- [Screen Inventory](#screen-inventory)

---

## Overview

| Property | Value |
|----------|-------|
| Version  | 1.0   |
| Date     | March 2026 |
| Platform | iOS / Android |
| Type     | Shopping App |

---

## 1. Onboarding & Authentication

### 1.1 Splash Screen

<div align="center">
  <img src="https://github.com/user-attachments/assets/2c06986a-2909-4906-a727-2353d9905316" width="280" alt="Log In Screen"/>
</div>
Branded launch screen displayed on app open, featuring the Marketi logo.

### 1.2 Onboarding Flow
A 3-step illustrated walkthrough introducing the app to new users:

| Step | Title |
|------|-------|
| 1 | Welcome to Marketi |

<div align="center">
  <img src="https://github.com/user-attachments/assets/b7ab4941-797d-4d24-b726-83242bb54c3e" width="280" alt="Log In Screen"/>
</div>


| 2 | Easy to Buy |

<div align="center">
  <img src="https://github.com/user-attachments/assets/3c5ccd5a-9c25-4aa9-8003-a81c81433d3e" width="280" alt="Log In Screen"/>
</div>



| 3 | Wonderful User Experience |

<div align="center">
  <img src="https://github.com/user-attachments/assets/dce1f4ed-9e10-4754-8bba-b0c0fe9687da" width="280" alt="Log In Screen"/>
</div>


Each step includes a **Next** button and a **Get Started** button on the final step.

### 1.3 Log In

<div align="center">
  <img src="https://github.com/user-attachments/assets/b0878117-00ff-4f3a-85f2-bb58212c94ee" width="280" alt="Log In Screen"/>
</div>

- Email and password fields
- Social login: Google, Apple, Facebook
- "Forgot Password" link

### 1.4 Sign Up

<div align="center">
  <img src="https://github.com/user-attachments/assets/f08c731f-2374-4b1c-bc1e-378ffb7843f9" width="280" alt="Sign Up Screen"/>
</div>

- Registration form: name, email, password
- Social sign-up: Google, Apple, Facebook

### 1.5 Forgot Password
Two recovery flows:
- Via phone number
- Via email address

Both send a verification code to the user.

### 1.6 Verification Code (OTP)
- 6-digit code input
- Resend code option
- **Verify Code** CTA

### 1.7 Sign-In Gate
Protected screens (e.g. Favorites, Checkout) display a "You're Not Signed In" prompt with a Sign In CTA for unauthenticated users.

---

## 2. Home Screen

- Personalized greeting with user's first name
- **Special Deal / Super Offer** promotional banner
- Search bar with filter access
- **Popular Products** — horizontal scroll with "View All" link
- **Category chips** — horizontal scroll (Smart TV, Phones, Laptops, etc.)
- **Category grid** — visual grid of main categories
- **Best for You** — personalized product recommendations

---

## 3. Search & Discovery

### 3.1 Search Page
- Full-screen search with keyboard
- Recent search history
- Live search suggestions

### 3.2 Search Result Tabs

| Tab | Description |
|-----|-------------|
| All Products | Full results for the query |
| Popular Products | Trending items |
| Buy Again | Previously purchased items |
| Best for You | Personalized results |
| Favorites | Saved / wishlisted items |

### 3.3 Empty State
"Oops Not Found!" illustration with a **Continue Shopping** CTA.

### 3.4 All Categories
Browsable grid: Electronics, Pampers, Food, Plants, Gaming, and more.

### 3.5 All Brands
Directory: JBL, Canon, Apple, Adidas, Lacoste, Toshiba, and more.

---

## 4. Product

### 4.1 Product Detail Page
- Product image gallery
- Name, brand, and category
- Price (e.g. `350.00 EGP`)
- Star rating and review count
- Variant / options selector
- **Add to Cart** button
- **Add to Favorites** option

---

## 5. Cart & Checkout

### 5.1 Cart
- Item list with quantities and prices
- Order subtotal

### 5.2 Empty Cart State
Illustration with a **Start Shopping** CTA.

### 5.3 Checkout
- Delivery address selection (with map integration)
- Delivery time estimate (e.g. "Within 2 days")
- Payment method input
- Order summary: subtotal, discount, total
- **Place Order** CTA

### 5.4 Order Success
- "Thank You!" confirmation screen
- **Go Home** CTA

---

## 6. Profile & Account

### 6.1 Profile Page
- User avatar and display name
- Light and Dark mode variants

### 6.2 Account Menu

| Option | Description |
|--------|-------------|
| My Orders | View order history |
| Payments | Manage payment methods |
| Account Preferences | Personal settings |
| Subscription & Payment | Manage plans/billing |
| App Notifications | Toggle push notifications |
| Dark Mode | Toggle app theme |
| Rate Us | In-app rating prompt |
| Provide Feedback | Submit feedback |
| Support | Access help/support |
| Log Out | Sign out of account |

---

## 7. Additional Features

### 7.1 Favorites / Wishlist
Save products to a favorites list, accessible from Search and Profile.

### 7.2 Dark Mode
Full dark theme support across the app, toggleable from Profile settings.

### 7.3 App Rating Prompt
In-app overlay with a 5-star selector and Cancel/OK buttons.

### 7.4 Bottom Navigation Bar
Persistent nav bar with 4 tabs:

| Tab | Icon |
|-----|------|
| Home | 🏠 |
| Search | 🔍 |
| Cart | 🛒 |
| Profile | 👤 |

---

## Screen Inventory

| Section | Screens |
|---------|---------|
| Onboarding & Auth | Splash, Onboarding ×3, Log In, Sign Up, Forgot Password ×2, Verification Code, Sign-In Gate |
| Home | Home |
| Search & Discovery | Search, Popular Products, Buy Again, Best for You, Favorites, All Categories, All Brands, Empty State |
| Product | Product Detail |
| Cart & Checkout | Cart, Empty Cart, Checkout, Order Success |
| Profile & Settings | Profile (Light), Profile (Dark) |
| Overlays | App Rating Prompt |
| **Total** | **~27 screens** |

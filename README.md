# Marketi E-Commerce App 🛍️

**Version:** 1.0  
**Date:** March 2026  
**Type:** shopping app 

---

## Overview

Marketi is a mobile e-commerce application (iOS/Android) that allows users to browse products, manage a cart, place orders, and manage their account. The app includes onboarding, authentication, product discovery, purchasing, and profile management.

---

## 1. Onboarding & Authentication

### 1.1 Splash Screen
Branded launch screen displayed on app open, featuring the Marketi logo.

### 1.2 Onboarding Flow
A 3-step illustrated walkthrough introducing the app to new users:
- Step 1: Welcome to Marketi
- Step 2: Easy to Buy
- Step 3: Wonderful User Experience

Each step includes a "Next" CTA button and a "Get Started" button on the final step.

### 1.3 Log In
<img width="1080" height="2280" alt="Screenshot_1775172547" src="https://github.com/user-attachments/assets/b0878117-00ff-4f3a-85f2-bb58212c94ee" />

- Email and password fields
- Social login options: Google, Apple, Facebook
- "Forgot Password" link

### 1.4 Sign Up

<img width="1080" height="2280" alt="Screenshot_1775756872" src="https://github.com/user-attachments/assets/f08c731f-2374-4b1c-bc1e-378ffb7843f9" />

- Registration form (name, email, password)
- Social sign-up options: Google, Apple, Facebook

### 1.5 Forgot Password
Two recovery flows available:
- Via phone number
- Via email address

Both flows send a verification code to the user.

### 1.6 Verification Code (OTP)
- 6-digit code input screen
- Resend code option
- "Verify Code" CTA

### 1.7 Sign-In Gate
Protected screens (e.g. Favorites, Checkout) show a "You're Not Signed In" prompt with a Sign In CTA when accessed by unauthenticated users.

---

## 2. Home Screen

- Personalized greeting with the user's first name
- **Special Deal / Super Offer** promotional banner
- Search bar with filter access
- **Popular Products** horizontal scroll section with "View All" link
- **Category chips** — horizontal scroll for quick category filtering (Smart TV, Phones, Laptops, etc.)
- **Category grid** — visual grid of main categories (Phones, Laptops, Food, Fashion, etc.)
- **Best for You** — personalized product recommendations section

---

## 3. Search & Discovery

### 3.1 Search Page
- Full-screen search with on-screen keyboard
- Search history — list of recent searches (e.g. "iPhone 15 Max", "White Sweet Pants")
- Search suggestions as user types

### 3.2 Search Result Tabs
Results are organized into tabs:
- **All Products** — full results for the query
- **Popular Products** — trending items
- **Buy Again** — items the user has previously purchased
- **Best for You** — personalized results
- **Favorites** — user's saved/wishlisted items

### 3.3 Empty State
"Oops Not Found!" illustration shown when no results match, with a "Continue Shopping" CTA.

### 3.4 All Categories
Browsable grid of all product categories including Electronics, Pampers, Food, Plants, Gaming, and more.

### 3.5 All Brands
Directory of available brands including JBL, Canon, Apple, Adidas, Lacoste, Toshiba, and more.

---

## 4. Product

### 4.1 Product Detail Page
- Product image gallery
- Product name, brand, and category
- Price display (e.g. "350.00 EGP")
- Star rating and review count
- Product variants/options selector
- **Add to Cart** button
- **Add to Favorites** option

---

## 5. Cart & Checkout

### 5.1 Cart
- List of added items with quantities and individual prices
- Order subtotal

### 5.2 Empty Cart State
Illustration shown when cart is empty, with a "Start Shopping" CTA.

### 5.3 Checkout
- Delivery address selection (with map integration)
- Delivery time estimate (e.g. "Within 2 days")
- Payment method input (card number fields)
- Order summary: subtotal, discount, total
- **Place Order** CTA button

### 5.4 Order Success
- "Thank You!" confirmation screen
- Order confirmation message
- **Go Home** CTA

---

## 6. Profile & Account

### 6.1 Profile Page
- User avatar and display name
- Light and Dark mode variants

### 6.2 Account Menu Options
| Option | Description |
|---|---|
| My Orders | View order history |
| Payments | Manage payment methods |
| Account Preferences | Personal settings |
| Subscription & Payment | Manage plans/billing |
| App Notifications | Toggle push notifications |
| Dark Mode | Toggle app theme |
| Rate Us | In-app rating prompt |
| Provide Feedback | Submit feedback |
| Log Out | Sign out of account |
| Support | Access help/support |

---

## 7. Additional Features

### 7.1 Favorites / Wishlist
Users can save products to a favorites list accessible from the Search and Profile areas.

### 7.2 Dark Mode
Full dark theme support across the entire app, toggleable from the Profile settings.

### 7.3 App Rating Prompt
An in-app overlay prompts users to rate the app with a 5-star selector and Cancel/OK buttons.

### 7.4 Bottom Navigation Bar
Persistent navigation bar with 4 tabs:
- Home
- Search
- Cart
- Profile

---

## Screen Inventory

| Section | Screens |
|---|---|
| Onboarding & Auth | Splash, Onboarding ×3, Log In, Sign Up, Forgot Password ×2, Verification Code, Sign-In Gate |
| Home | Home |
| Search & Discovery | Search, Popular Products, Buy Again, Best for You, Favorites, All Categories, All Brands, Empty State |
| Product | Product Detail |
| Cart & Checkout | Cart, Empty Cart, Checkout, Order Success |
| Profile & Settings | Profile (Light), Profile (Dark) |
| Overlays | App Rating Prompt |
| **Total** | **~27 screens** |

---

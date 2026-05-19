# Laravel Video Game Web Shop

Created by **Matija Kojčić**

This is a web-based video game store built using Laravel. It features user authentication, an admin dashboard, CRUD functionality for games, user orders, and comment management.

---

## 🌐 Available Languages

- [English](README.md)
- [Srpski](README.sr.md)
- [日本語](README.ja.md)

---

## 🚀 Live Demo

The project is live and accessible at:

**[https://laravel-game-shop.onrender.com](https://laravel-game-shop.onrender.com)**

> Note: The site is hosted on Render's free tier, so it may take 30–60 seconds to load if it has been inactive.

### Test Accounts

| Role   | Email          | Password |
|--------|----------------|----------|
| Admin  | admin@pwa.rs   | admin    |
| Editor | editor@pwa.rs  | editor   |
| User   | user@pwa.rs    | user     |


---

## Features

- **Home Page**: Displays featured video games.
- **Game Details**: Click "Опширније" to view game details and scroll down to the "Поручи" button to place an order.
- **User Dashboard**:
  - View and manage your game orders.
  - Leave reviews for games you've purchased.
  - Cancel existing orders.
- **Admin Dashboard**:
  - Accessible only to admin users.
  - Manage:
    - Games (CRUD)
    - Users (CRUD, admin-only)
    - Comments (CRUD)
  - Editors can manage games and comments but cannot access the Users table.
  - Regular users cannot access the admin dashboard at all.
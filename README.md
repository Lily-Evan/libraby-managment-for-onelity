# 📚 Library Management System

A modern, fully functional **Library Management Web App** built with **React**, designed to simulate user and admin interactions in a digital library environment. Created with scalability, responsiveness, and user experience in mind — ideal for internal tools, demos, or educational platforms.

---

## ✨ Features

### 👩‍💼 User Functionality
- 🔐 Login / Register (mock authentication)
- 📚 Browse and search books by title, author, or category
- 📖 Borrow and return books
- ⭐ Rate and review books
- 🧾 View personal borrowing history & ratings

### 🛠️ Admin Dashboard
- ➕ Add new books
- 📝 Edit book information
- ❌ Delete books
- 🔐 Role-based access (admin-only routes)


## 🚀 Getting Started

👥 Demo Credentials
Role	Email	Password
Admin	admin@library.com	admin
User	user@library.com	user

📁 Project Structure
bash

src/
├── components/        # UI components (Navbar, Buttons, Book Cards)
├── contexts/          # Authentication context
├── hooks/             # Custom hook: useBooks
├── pages/             # Route pages (Home, Books, Profile, Admin, Login, Register)
├── App.jsx            # Main app with routing
├── main.jsx           # Entry point
└── index.css          # Tailwind config


📌 Notes

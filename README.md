# Donately - Blood Donation Management System

## 📌 Project Overview

**Donately** is a full-stack web-based Blood Donation Management System designed to streamline and manage blood donation processes efficiently. It provides an intuitive platform for donors, administrators, and hospitals to interact seamlessly.

## 🛠️ Technologies Used

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL

## 🌟 Features

### 🔐 Authentication

- User **Login** and **Sign-up** functionality
- Secure **password hashing** for user credentials

### 🏥 Admin Dashboard

- View, manage, and approve donor registrations
- Track blood donations and availability
- Manage hospital requests and inventory

### 🩸 Donor Features

- Register and create a donor profile
- Book appointments for blood donation
- View donation history

### 🏥 Hospital Features

- Request blood from available donors
- Monitor blood inventory levels

## 📂 Project Structure

```
Donately/
│── .vscode/            # VS Code settings
│── css/               # Stylesheets
│── database/          # Database schema and SQL scripts
│── fonts/             # Font assets
│── imgs/              # Image assets
│── inc/               # Includes (e.g., database connection)
│── js/                # JavaScript files
│── webfonts/          # Web font assets
│── .gitignore         # Git ignore file
│── README.md          # Project documentation
│── index.php          # Home page
│── login.php          # User login page
│── login-post.php     # Login form handler
│── register.php       # User registration page
│── register-post.php  # Registration form handler
│── logout.php         # Logout functionality
│── profile.php        # User profile page
│── settings.php       # User settings page
│── donors.php         # Donor listing page
│── recievers.php      # Blood receivers page
│── admin.php          # Admin panel
│── add-admin.php      # Add new admin page
│── admin-post.php     # Admin actions handler
│── general-info-ad.php# General admin information
│── donate-post.php    # Blood donation submission
│── update-profile-ad.php # Profile update for admin
│── recieve-post.php   # Blood receive request handler
```

## 🚀 Installation & Setup

### 1️⃣ Clone the Repository

```sh
git clone https://github.com/YOUR_USERNAME/Donately-Blood-Donation-Management-Website.git
cd Donately
```

### 2️⃣ Set Up the Database

- Import the SQL file from the `database/` folder into MySQL.

### 3️⃣ Start the Server

- Use **XAMPP** or **WAMP** to run a local Apache & MySQL server.
- Place the project in the `htdocs` folder (if using XAMPP).
- Open `http://localhost/Donately-Blood-Donation-Management-Website/` in a browser.


## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

## 🤝 Contributing

Feel free to **fork** this repository, make improvements, and submit a **pull request**!

## 📧 Contact

For any questions or suggestions, reach out via **email** or open an **issue** in the repository.


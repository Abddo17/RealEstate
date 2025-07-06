# 🏠 Real Estate Website (PHP)

A simple and functional real estate website developed using **native PHP**. This application allows users to browse, search, and list properties, with user authentication, an admin panel, and a responsive UI.

---

## 🚀 Features

- 🏡 View and browse listed properties with images and details  
- 🔍 Search properties by location, type, or price range  
- 🧑‍💼 User registration and login system  
- ✏️ Logged-in users can add, edit, and manage their property listings  
- 🛠️ Admin panel for managing users and property data  
- 📱 Fully responsive design for mobile and desktop  

---

## 🛠️ Built With

- **PHP** (native, no framework)  
- **MySQL**  
- **HTML5, CSS3, JavaScript**  
- **Bootstrap** (for responsive layout)

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/real-estate-php.git
2. Import the Database
Open your MySQL server (e.g., phpMyAdmin)

Import the included .sql file (e.g., real_estate.sql) into a new database

3. Configure Database Connection
Open the configuration file (e.g., config/database.php) and update it with your database credentials:

php
Copy
Edit
$host = "localhost";
$db = "real_estate_db";
$user = "root";
$pass = "";
4. Run the Application
Place the project folder in your local server directory (e.g., htdocs for XAMPP)

Visit http://localhost/real-estate-php/ in your browser

🔐 Default Admin Credentials
You can change these in the database or through the admin panel.

Username: admin

Password: admin123

📂 Folder Structure
bash
Copy
Edit
/real-estate-php
│
├── /assets          # Images, CSS, JavaScript files
├── /includes        # Reusable components (header, footer, DB connection)
├── /admin           # Admin dashboard and management tools
├── /users           # User login, registration, and profile
├── /properties      # Property listings, add/edit forms
├── index.php        # Homepage
└── ...

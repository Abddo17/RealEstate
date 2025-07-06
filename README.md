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
/real-estate-php
│
├── .idea/ # IDE configuration files (can be ignored)
├── DATABASE FILE/ # MySQL database dump (.sql file)
│
├── admin/ # Admin dashboard and controls
├── css/ # Stylesheets
├── fonts/flaticon/ # Custom icon fonts
├── webfonts/ # Web fonts
├── images/ # Property and UI images
├── js/ # JavaScript files
├── include/ # Reusable PHP includes (header, footer, db connection)
│
├── about.php # About page
├── agent.php # Agent profile page
├── calc.php # Mortgage or finance calculator
├── config.php # DB connection and config settings
├── contact.php # Contact form/page
├── faq.php # Frequently asked questions
├── feature.php # Features overview
├── index.php # Homepage
├── login.php # User login
├── logout.php # User logout
├── profile.php # User profile
├── property.php # Property listing (single view)
├── propertydetail.php # Detailed property view
├── propertygrid.php # Grid view of multiple properties
├── register.php # User registration
├── stateproperty.php # Property filtered by state/location
├── submitproperty.php # Add new property listing
├── submitpropertydelete.php # Delete user property listing
├── submitpropertyupdate.php # Edit/update user property listing
├── termscondi.php # Terms and conditions
├── README.md # Project documentation (this file)

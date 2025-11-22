# TrustVault - Banking Management System 🏦

[![PHP](https://img.shields.io/badge/PHP-8.0.7-777BB4?style=flat&logo=php&logoColor=white)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-5.7-4479A1?style=flat&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-4.3.1-7952B3?style=flat&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 📋 Table of Contents
- [About the Project](#about-the-project)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Database Schema](#database-schema)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## 🎯 About the Project

**TrustVault** (formerly tsfbank) is a comprehensive web-based banking management system that simulates real-world banking operations. Built with PHP and MySQL, this application provides a secure and user-friendly interface for managing customer accounts, performing money transfers, and tracking transaction history.

The system is designed to demonstrate fundamental banking operations including:
- Customer account management
- Secure money transfers between accounts
- Real-time balance updates
- Transaction history (Passbook)
- Responsive user interface

## ✨ Features

### 🏠 Home Page
- Clean and intuitive landing page
- Quick access to main features
- Responsive navigation menu

### 👥 User Management
- View all registered customers
- Display customer details:
  - User ID
  - Account Number
  - Full Name
  - Current Balance
  - Email Address
- Access individual customer profiles
- View transaction passbooks

### 💸 Money Transfer
- **Select Sender**: Choose the account to send money from
- **Select Receiver**: Choose the recipient account
- **Transfer Amount**: Enter the amount to transfer
- **Real-time Validation**:
  - Checks sufficient balance
  - Prevents transfers to the same account
  - Validates positive amounts
- **Instant Updates**: Both accounts updated immediately
- **Transaction Recording**: All transfers logged in the database

### 📖 Passbook
- Complete transaction history for each user
- Details include:
  - Transaction ID
  - Sender Account Number & Name
  - Receiver Account Number & Name
  - Transfer Amount
  - Transaction Timestamp
- Easy-to-read tabular format

## 🛠️ Tech Stack

### Backend
- **PHP 8.0.7**: Server-side scripting
- **MySQL/MariaDB 10.4.19**: Database management

### Frontend
- **HTML5**: Structure
- **CSS3**: Styling with custom responsive design
- **JavaScript**: Client-side interactivity
- **Bootstrap 4.3.1**: UI framework
- **jQuery 3.3.1**: DOM manipulation
- **Popper.js 1.14.7**: Tooltip positioning

### Development Environment
- **phpMyAdmin 5.1.1**: Database administration
- **XAMPP/WAMP/MAMP**: Local server environment (recommended)

## 🗄️ Database Schema

The system uses a database named `nags` with two main tables:

### Table: `user`
```sql
CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `ac` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `no` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
```

### Table: `transection`
```sql
CREATE TABLE `transection` (
  `sid` int(4) NOT NULL,
  `sac` varchar(10) NOT NULL,
  `sna` varchar(20) NOT NULL,
  `rid` int(4) NOT NULL,
  `rec` varchar(10) NOT NULL,
  `rna` varchar(20) NOT NULL,
  `amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
```

**Field Descriptions:**
- `id`/`sid`: User/Sender ID
- `ac`/`sac`: Account Number
- `name`/`sna`: User/Sender Name
- `no`: Phone Number
- `email`: Email Address
- `amt`: Amount/Balance
- `rid`: Receiver ID
- `rec`: Receiver Account Number
- `rna`: Receiver Name

## 🚀 Installation

### Prerequisites
- PHP >= 8.0
- MySQL/MariaDB >= 5.7
- Apache Web Server
- phpMyAdmin (optional, for easier database management)

### Step-by-Step Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Nags-gk/TrustVault.git
   cd TrustVault
   ```

2. **Set Up the Web Server**
   - If using XAMPP:
     - Copy the project folder to `C:/xampp/htdocs/TrustVault`
   - If using WAMP:
     - Copy the project folder to `C:/wamp64/www/TrustVault`
   - If using MAMP:
     - Copy the project folder to `/Applications/MAMP/htdocs/TrustVault`

3. **Create the Database**
   - Open phpMyAdmin (usually at `http://localhost/phpmyadmin`)
   - Create a new database named `nags`
   - Import the SQL file:
     - Click on the `nags` database
     - Go to the "Import" tab
     - Choose the `nags.sql` file from the project directory
     - Click "Go" to execute

4. **Configure Database Connection**
   - Open `db.php` (if exists) or check connection files
   - Update the database credentials if needed:
     ```php
     $servername = "localhost";
     $username = "root";
     $password = "";
     $database = "nags";
     ```

5. **Start the Application**
   - Start Apache and MySQL from XAMPP/WAMP/MAMP control panel
   - Open your browser and navigate to:
     ```
     http://localhost/TrustVault/index.php
     ```

## 📱 Usage

### Viewing All Users
1. Click on "USER'S DETAILS" button from the home page
2. Browse through the list of all registered customers
3. View account balances and personal information
4. Click "PASSBOOK" button to view transaction history

### Transferring Money
1. Click on "MONEY TRANSFER" button from the home page
2. **Step 1**: Select the sender account from the displayed list
3. **Step 2**: Select the receiver account
4. **Step 3**: Enter the amount to transfer
5. Confirm the transaction
6. View updated balances immediately

### Checking Transaction History
1. Navigate to "USER'S DETAILS"
2. Click the "PASSBOOK" button next to any user
3. View all transactions involving that account
4. See detailed information about each transfer

## 📂 Project Structure

```
TrustVault/
│
├── index.php           # Home page with navigation
├── user.php            # Display all users/customers
├── sender.php          # Select sender for money transfer
├── receiver.php        # Select receiver for money transfer
├── amount.php          # Enter transfer amount
├── passbook.php        # View transaction history
├── header.php          # Common header component
├── footer.php          # Common footer component
├── db.php              # Database connection file
├── nags.sql            # Database schema and sample data
└── README.md           # Project documentation
```

## 📸 Screenshots

### Home Page
The landing page featuring "THE NSV BANK" branding with options to view user details or initiate money transfers.

### User Details Page
Displays a comprehensive table of all registered customers with their account information and balance.

### Money Transfer Interface
User-friendly multi-step process for securely transferring funds between accounts.

### Passbook View
Detailed transaction history showing all money transfers for a specific account.

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Areas for Improvement
- Add user authentication and login system
- Implement password protection for accounts
- Add email notifications for transactions
- Create admin dashboard
- Add transaction limits and daily limits
- Implement PIN/OTP verification
- Add currency conversion features
- Create mobile responsive improvements
- Add export to PDF functionality
- Implement audit logs

## 📝 License

Distributed under the MIT License. See `LICENSE` file for more information.

## 📞 Contact

Project Link: [https://github.com/Nags-gk/TrustVault](https://github.com/Nags-gk/TrustVault)

## 🙏 Acknowledgments

- Bootstrap for the responsive framework
- Font Awesome for icons
- PNGTree for bank icon graphics
- The PHP and MySQL communities

---

⭐ If you found this project helpful, please consider giving it a star!

**Made with ❤️ for learning and demonstration purposes**

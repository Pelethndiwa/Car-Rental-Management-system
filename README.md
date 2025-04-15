# 🚗 Car Rental and Fleet Management System

An automated web-based Car Rental and Fleet Management System that allows users to book vehicles in real-time and enables administrators to manage fleet status, bookings, payments, and analytics with ease.

## 📌 Features

### 🧾 User-side
- Vehicle listing and category filter
- Real-time booking system
- Booking history and status tracking
- M-Pesa payment integration (STK Push)
- Responsive UI using Bootstrap

### ⚙️ Admin-side
- Dashboard with booking and vehicle statistics
- Add, update, or delete vehicle records
- Manage booking status (approved, declined, completed)
- Fleet status control (available, booked, under maintenance)
- View payment logs and user activity

### 📊 Data Analytics
- Visual summaries for admin: total bookings, income, popular vehicles
- Exportable reports for fleet and financial insights

## 🛠️ Technologies Used

- **Backend:** PHP (XAMPP)
- **Database:** MySQL
- **Frontend:** HTML, CSS, Bootstrap
- **Scripting:** JavaScript, jQuery
- **Payment Integration:** M-Pesa STK Push (Daraja API)

## 🚀 Getting Started

### Requirements

- XAMPP or any local server
- PHP 7.x or higher
- MySQL database
- Internet connection for M-Pesa integration (Daraja API)

### Installation

1. Clone or download the repository:
   ```bash
   git clone https://github.com/pelethndiwa/Car-Rental-Management-system.git
   ```

2. Move the folder to your XAMPP `htdocs` directory.

3. Import the database:
   - Open **phpMyAdmin**.
   - Create a new database, e.g. `car_rental`.
   - Import the provided `.sql` file into the database.

4. Update database credentials in `/config/db.php`.

5. Start Apache and MySQL from XAMPP and run the project at:
   ```
   http://localhost/Car-Rental-Management-system
   ```

6. For M-Pesa integration, set up your Daraja API credentials in `/config/mpesa.php`.

## 🔐 Login Credentials (Default)

### Admin:
- **Username:** admin  
- **Password:** 12345

### User:
- Register from the frontend

## 📄 License

This project is for academic purposes and personal development. Not intended for commercial use without proper permission.

## 👨‍💻 Author

**[PELETH NDIWA]**  
Final Year Student – Chuka University  
GitHub: [pelethndiwa](https://github.com/pelethndiwa)

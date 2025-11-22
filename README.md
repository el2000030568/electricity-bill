<h1 align="center">⚡ Electricity Billing System ⚡</h1>
<h3 align="center">Java Spring Boot • AWS • Azure • OTP • SMTP • Admin Panel</h3>

<p align="center">
  <img src="https://img.shields.io/badge/Java-17-red?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Spring%20Boot-Backend-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/AWS-RDS-orange?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Azure-Deployment-blue?style=for-the-badge" />
</p>

---

## 🚀 Overview  
Electricity Billing System is a **Java Spring Boot** application designed to calculate monthly electricity bills (similar to ComEd).  
It includes **OTP verification**, **SMTP billing emails**, **Admin dashboard**, **AWS RDS database**, and **Azure deployment**.

---

## 🏷️ Tech Badges
![Java](https://img.shields.io/badge/Java-17-red)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-Backend-green)
![AWS RDS](https://img.shields.io/badge/AWS-RDS-orange)
![Azure](https://img.shields.io/badge/Azure-Deployment-blue)
![Maven](https://img.shields.io/badge/Maven-Build-yellow)
![OTP](https://img.shields.io/badge/Phone%20OTP-AWS%20SNS-lightgrey)
![SMTP](https://img.shields.io/badge/SMTP-Email-orange)
![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen)

---

## 🔹 User Experience Flow
This section illustrates the step-by-step user journey, from login to viewing and paying a bill.

### 1. User Login 🔑
The user can log in using their service number or phone number and a password. Forgot password functionality is also available, likely triggering an OTP reset.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (240).jpg" alt="Login screen for the Electricity Bill System with fields for Scno/phone and password." width="500"/>
</p>

This screen also links to the password recovery page, which initiates **OTP verification**.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (241).jpg" alt="Password recovery screen requiring phone number to get OTP." width="500"/>
</p>

### 2. User Dashboard 🏠
Upon successful login, the user is presented with their dashboard, showing their **Total Dues** and essential account information. Navigation links allow for changing the password, viewing history, and updating contact details.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (246).jpg" alt="User dashboard showing a welcome message, Total Dues, and a table of previous bill records." width="700"/>
</p>

### 3. Viewing and Paying the Bill 💸
Users can view a detailed breakdown of their bill, including the service number, units consumed, cost, bill date, and due date. A **Pay** button facilitates the payment process.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (247).jpg" alt="Pop-up view of the electricity bill showing service number, customer name, bill date, units consumed (40), and cost (120)." width="700"/>
</p>
A separate view provides the full summary before payment.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (248).jpg" alt="Full bill view screen showing customer name, service number, billed units, dates, and payment ID." width="700"/>
</p>

### 4. Updating Account Details ✏️
Users have the option to update their phone number or add/update their email address, often requiring the Service Number (**Scno**) for verification.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (242).jpg" alt="Screen with instructions for changing/linking mobile number requiring the service number (Scno)." width="700"/>
</p>
The system also allows for email updates using an OTP sent to the new address.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (243).jpg" alt="Email processing system screen requiring Scno to update the email address using an OTP." width="700"/>
</p>

---

## 🔹 Admin & Employee Access
The system includes separate portals for administrative and employee functions, ensuring **Role-Based Access Control**.

### 1. Admin Panel ⚙️
The **Admin** panel is secured with a dedicated login, allowing management to oversee the entire system, update unit pricing, and manage billing history.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (245).jpg" alt="Admin Login page with fields for admin name and admin password." width="500"/>
</p>

### 2. Employee Access 👷
Employees can log in with their EMPID to start entering bill statuses, which is essential for the timely processing of bills.
<p align="center">
<img src="./src/main/webapp/images/Screenshot (244).jpg" alt="Employee Login page with fields for EMPID and password." width="500"/>
</p>

---

## 🧩 System Architecture
1. **User logs in** $\to$ receives OTP via AWS SNS  
2. **Backend verifies OTP** & creates session  
3. User submits units consumed  
4. Backend fetches **price/unit from DB**  
5. System **calculates the total bill**  
6. **Email notification sent** via SMTP  
7. **Admin panel** for system management  
8. Hosted on **Azure**  

---
## 🧮 Billing Formula
$$\text{Total Bill} = \text{Units Consumed} \times \text{Price Per Unit}$$

## ⚙️ Installation
```bash
git clone [https://github.com/el2000030568/electricity-bill](https://github.com/el2000030568/electricity-bill)
cd electricity-bill
mvn spring-boot:run

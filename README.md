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

## 🔹 Features (User)
- Calculate monthly electricity bill  
- OTP-based phone verification (AWS SNS)  
- Email notifications using SMTP (JavaMail)  
- View past bills  
- Secure login  

---

## 🔹 Features (Admin)
- Full **Admin Dashboard**  
- Add/update/delete customers  
- Update **unit pricing table**  
- View system logs  
- Manage billing history  
- Monitor AWS RDS database  
- Role-based access  

---

## 🧩 System Architecture
1. user logs in → receives OTP via AWS SNS  
2. backend verifies OTP & creates session  
3. user submits units consumed  
4. backend fetches price/unit from DB  
5. system calculates the total bill  
6. email notification sent via SMTP  
7. admin panel for system management  
8. hosted on Azure  

---

## 🧮 Billing Formula
Total Bill = Units Consumed × Price Per Unit


---

## 📂 Project Structure
electricity-bill/

├── src/

│ └── main/
│ ├── java/com/<your-name>/electricity/
│ │ ├── controller/
│ │ ├── service/
│ │ ├── repository/
│ │ └── model/
│ └── resources/
│ ├── application.properties
│ └── templates/
├── pom.xml
└── README.md


---

## ⚙️ Installation
```bash
git clone https://github.com/el2000030568/electricity-bill
cd electricity-bill
mvn spring-boot:run


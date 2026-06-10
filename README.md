# Peacefarm
🌿 Peace Farm Booking System

A web-based application developed using Spring MVC, JSP, Hibernate (JPA), and MySQL that allows users to register, log in, and book their favorite farm destinations.

📌 Features
User Registration (Sign Up)
User Login
View Available Places
Select a Farm and Book It
Choose Date, Time Slot, and Number of Members
View Booking Details
Prevent Duplicate Bookings for the Same Date and Time
🚀 Application Flow
1. Home Page

When the application starts, the index.jsp page is displayed.

Click "Start Project" to continue.
2. Login Page

Users are redirected to the login page.

Existing users can enter their Username and Password to log in.
New users can click Sign Up to create an account.
3. Sign Up Page

New users provide:

Username
Email
Password

After successful registration, users are redirected to the login page.

4. Home Page

After logging in successfully, the user enters the home page.

Various farm destinations are displayed.
Click "Book Now" on the desired place.
5. Booking Page

Users can enter:

Booking Date
Time Slot
Number of Members
6. Booking Confirmation

After submitting the details, the booking is successfully stored in the database.

7. My Bookings

Users can view all their booked places along with:

Place Name
Date
Time Slot
Number of Members
🛠 Technologies Used
Java
Spring MVC
JSP
Hibernate (JPA)
MySQL
HTML
CSS
Bootstrap
📂 Project Structure
src/main/java
│
├── controller
│     └── MainController.java
│
├── dao
│     └── Dao.java
│
├── entity
│     ├── User.java
│     └── Booking.java
│
src/main/webapp
│
├── index.jsp
├── login.jsp
├── signup.jsp
├── home.jsp
├── booking.jsp
└── mybookings.jsp
📖 How to Run
Import the project into Eclipse or IntelliJ IDEA.
Configure MySQL database and persistence settings.
Run the application on Apache Tomcat Server.
Open:
http://localhost:8080/
Click Start Project.
Login or Sign Up.
Select your desired place.
Enter date, time slot, and number of members.
Booking is completed successfully.
🎯 Future Enhancements
Payment Integration
Booking Cancellation
Email Notifications
Admin Dashboard
User Profile Management
Booking History Search
Developed using Spring MVC and Hibernate.

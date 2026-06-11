#  Peace Farm Booking System

A web-based application built using **Spring MVC, JSP, Hibernate (JPA), and MySQL** that allows users to register, log in, and book their favorite farm destinations.

---

##  Features

- User Registration
- User Login Authentication
- Farm Destination Selection
- Date and Time Slot Booking
- Member Count Selection
- Booking Confirmation
- View Booking History
- Prevent Duplicate Bookings

---

##  Application Flow

### 1. Start the Application

When the application starts, the `index.jsp` page is displayed.

- Click **Start Project** to continue.

### 2. Login Page

Users are redirected to the login page.

- Existing users can log in using their username and password.
- New users can click **Sign Up** to create an account.

### 3. Sign Up

New users provide:

- Username
- Email
- Password

After successful registration, users are redirected to the login page.

### 4. Home Page

After successful login, the home page is displayed.

Various farm destinations are available.

Click **Book Now** on your desired place.

### 5. Booking Page

Users provide:

- Booking Date
- Time Slot
- Number of Members

### 6. Booking Confirmation

After submitting the details, the booking is successfully stored in the database.

### 7. My Bookings

Users can view all their bookings along with:

- Place Name
- Date
- Time Slot
- Number of Members

---

##  Technologies Used

- Java
- Spring MVC
- JSP
- Hibernate (JPA)
- MySQL
- HTML
- CSS
- Bootstrap

---

##  Project Structure

```text
src/main/java
│
├── controller
│   └── MainController.java
│
├── dao
│   └── Dao.java
│
├── entity
│   ├── User.java
│   └── Booking.java
│
src/main/webapp
│
├── index.jsp
├── login.jsp
├── signup.jsp
├── home.jsp
├── booking.jsp
└── mybookings.jsp
```

---

##  How to Run

1. Import the project into Eclipse or IntelliJ IDEA.
2. Configure MySQL database and persistence settings.
3. Run the application using Apache Tomcat Server.
4. Open:

```text
http://localhost:8080/
```

5. Click **Start Project**.
6. Login or Sign Up.
7. Select your desired farm destination.
8. Enter the booking date, time slot, and number of members.
9. Booking will be completed successfully.

---

##  Future Enhancements

- Payment Integration
- Booking Cancellation
- Email Notifications
- Admin Dashboard
- User Profile Management
- Booking History Search

---

##  Developed Using

- Spring MVC
- Hibernate (JPA)
- JSP
- MySQL
- Java

---

###  Enjoy booking your favorite farm destination with Peace Farm!

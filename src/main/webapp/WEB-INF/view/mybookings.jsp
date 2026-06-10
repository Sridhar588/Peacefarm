<%@page import="java.util.List"%>
<%@page import="edu.jsp.entity.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyBookings</title>
    <style type="text/css">
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
}
body{
    height: 100vh;
    width: 100%;
    background-color: rgb(236, 241, 214);
}
.box{
    
    width: 100%;
    /* background-color: blue; */
    padding: 5px;
    display: flex;
    flex-direction: column;
}
.cell{
    background-color: rgb(241, 250, 250);
    height: 110px;
    font-width: 100vw;
    margin: 10px 10px 10px 10px;
    border: 2px solid black;
    border-radius: 8px;
    box-shadow:  2px 2px 2px 2px;
    cursor: pointer;
    font-family: Arial, Helvetica, sans-serif;
    font-size: larger;
    font-weight: bolder;
    padding:5px;
    
}
.cell:hover{
    transform:translateY(-8px);
    box-shadow:0 8px 25px rgba(0,0,0,0.25);
}
    </style>
</head>
<body>
<%List<Booking>bookings=(List<Booking>)request.getAttribute("list"); %>
<center><h1>My Bookings</h1></center>


    
    <section class="box">
    
    <%for(Booking b:bookings){ %>

        <div class="cell">
        <h4>Place: <%=b.getPlace() %></h4>
		<h4>Date: <%=b.getDate() %></h4>
		<h4>Time: <%=b.getTime() %></h4>
		<h4>Members: <%=b.getMembers() %></h4>
    </div>
    
    <%} %>
    
    </section>
</body>
</html>
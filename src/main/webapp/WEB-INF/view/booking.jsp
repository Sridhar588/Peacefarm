<%@page import="edu.jsp.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
    <!DOCTYPE html>
<%User user=(User)request.getAttribute("obj"); %>
<%String book=(String)request.getAttribute("book"); %>
<%String bgimg=(String)request.getAttribute("bgimg"); %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking page</title>
    <style type="text/css">
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    height: 100vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-image: url(<%=bgimg%>);
    background-size: cover;
    background-position: center;
    
}

.form{
    display: flex;
    flex-direction: column;
    padding: 30px;
    gap: 50px;
    background-color: rgb(204, 236, 236);
    height: 500px;
    width: 500px;
    border: 2px solid black;
    border-radius: 2%;
    box-shadow: 2px 2px 2px 2px;
}
.form h1{
    /* background-color: brown; */
     text-align:center;
    font-size:32px;
    margin-bottom:25px;
}


.form form{
    display: grid;
    
    
}
form label{
    font-size:18px;
    font-weight:bold;
    margin-bottom:8px;
}
form input{
    height:40px;
    padding:10px;
    font-size:14px;
    border:1px solid #999;
    border-radius:4px;
    cursor: pointer;
}
.radio_btn{
    display:flex;
    
    
}

.radio_btn label{
    font-size:18px;
    cursor:pointer;
}
.btnplace{
    height: 100px;
    width: 100%;
   
    display: flex;
    justify-content: center;
    align-items: center;
    
}

#btn{
     width:50%;
    height:40px;
    
    border-radius:4px;
    background:rgb(125, 236, 255);
    color:rgb(0, 0, 0);
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
}
    </style>

</head>
<body>

    <div class="form">
        <h1>Book your slot</h1>
        <form action="onbook">
         <input type="hidden" name="farm"
           value="<%=request.getParameter("farm")%>">
            <label for="date">Enter Date</label>
            <input type="date" name="date" required>
             <label for="time">Select Time Slot</label>
            <div class="radio_btn">
               

            <input type="radio" id="slot1" name="time" value="09:00-11:00" required>
            <label for="slot1">9:00 AM - 11:00 AM</label>

            <input type="radio" id="slot2" name="time" value="11:00-13:00">
            <label for="slot2">11:00 AM - 1:00 PM</label>

            <input type="radio" id="slot3" name="time" value="13:00-15:00">
            <label for="slot3">1:00 PM - 3:00 PM</label>

            <input type="radio" id="slot4" name="time" value="15:00-17:00">
            <label for="slot4">3:00 PM - 5:00 PM</label>
            </div>
            <label for="members">Enter members count</label>
            <input type="number" name="members" required>
            
            <div class="btnplace">
                <input id ="btn" type="submit" >
            </div>
        </form>

    </div>
</body>
</html>
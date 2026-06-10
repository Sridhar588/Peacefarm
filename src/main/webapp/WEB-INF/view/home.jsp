<%@page import="edu.jsp.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style type="text/css">
    *{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
    background-color: azure;
    
    height: fit-content;
}

body{
    height:fit-content;
    width: 100%;
     background-color: rgb(203, 231, 181);
    
    
}

nav{
    width: 100%;
    height: 10vh;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border: 2px solid rgb(194, 191, 191);
    background-color: aliceblue;
    
    
}
.logo{
    font-family:'Times New Roman', Times, serif;
    font-size: 10mm;
    font-weight: bolder;
    font-variant: small-caps;
    background:none;
    margin: 20px;
    
}
.link{
    display: flex;
    list-style: none;
    gap: 30px;
    background-color: aliceblue;
    margin: 10px;
     
   
    
}
.link a{
    text-decoration:none;
    color: black;
    font-size:18px;
    font-weight: bolder; 
    background-color: aliceblue; 
    
}

.logout_btn{
    background-color: aqua;
    height: 25px;
    padding: 5px;
    font-family: 'Times New Roman', Times, serif;
    font-weight: bolder;
    border-radius: 10%;
    cursor: pointer;

}
.logout_btn:hover{
    background-color: black;
    color: white;
}

.box{
    
    min-height: 100vh;
    display: grid;
    justify-content: space-around;
    align-items: center;
    grid-template-columns:repeat(4,1fr);
    gap: 10px;
    left: 10px;
    width:90%;
    margin:30px auto;
     background-color: rgb(203, 231, 181);
   
    
    
    
}

.box1{
    height: 50vh;
    width: 20vw;
    margin: 5px;
    background-color: rgb(236, 240, 240);
     border-radius:20px;
    border: 1px solid black;
    display:flex;
    flex-direction: column;
    justify-content:center;
     overflow:hidden;
    box-shadow:0 4px 15px rgba(0,0,0,0.15);
    
}
.box1:hover{
    transform:translateY(-8px);
    box-shadow:0 8px 25px rgba(0,0,0,0.25);
}

.box1 img{

    width:100%;
    height:180px;
    display: block;
    object-fit:fill;
    
}

.field_info{
    height: 80%;
    width: 100%;
    
}

.field_info h1{
     margin: 0px 0px 0px 5px ;
}
.field_info p{
    margin: 0px 0px 0px 5px ;
    
    /* background-color: blueviolet; */
}
.book_btn{
    height: 100px;
    /* background-color: crimson; */
    display: flex;
    align-items: center;
    justify-content: center;
    
}
.book_btn button{
    padding: 6px;
    border-radius: 10px;
    background-color: black;
    color: white;
    cursor: pointer;
    font-weight: bolder;
    font-family: Georgia, 'Times New Roman', Times, serif;
    
}
.book_btn button:hover{
    background-color: white;
    color: black;
}

footer{
    display: flex;
    background-color: rgb(22, 19, 19);
    color: white;
    align-items: center;
    justify-content: center;
}
    </style>
</head>
<body>

<%User u=(User)request.getAttribute("user"); %>

    <nav>
        <div class="logo">
            Peace farm</div>
        
        
            <ul class="link">
                <li><a href="">Home</a></li>
                <li><a href="">About</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="bookings">My booking</a></li>
                <button class="logout_btn" onclick="location.href='login'">Logout</button>
            </ul>
        
    
    </nav>
    <h3 style="background-color: rgb(203, 231, 181); margin: 10px;">Hello, <%=u.getUsername() %></h3>

    <section class="box">
        
<!-- Sunflower farm -->
<div class="box1" >
    <img src="https://plus.unsplash.com/premium_photo-1661963037608-26bdb13b2032?q=80&w=872&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="sunflower farm">
    <div class="field_info">
        <h1>Sunflower farm</h1>
        <p>Walk among bright sunflowers and fresh air</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=sunflower&bgimg=https://plus.unsplash.com/premium_photo-1661963037608-26bdb13b2032?q=80&w=872&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'">Book time slot</button></div>
</div>
<!--  Rice filed-->
<div class="box1" >
    <img src="https://images.unsplash.com/photo-1636947112949-8fa88a394e65?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="rise field">

<div class="field_info">
        <h1>Rice farm</h1>
        <p>Walk through beautiful green fields and fresh air</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=Rice filed&bgimg=https://images.unsplash.com/photo-1636947112949-8fa88a394e65?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'">Book time slot</button>
    </div>
</div>
<!-- Cow farm -->
<div class="box1" >
    <img src="https://tse2.mm.bing.net/th/id/OIP.afFg3tEV6Xf65U8xPa0gxwHaE8?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3" alt="cow field">

<div class="field_info">
        <h1>Cow farm</h1>
        <p>Experience village life with friendly farm animals</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=Cow farm&bgimg=https://tse2.mm.bing.net/th/id/OIP.afFg3tEV6Xf65U8xPa0gxwHaE8?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3'">Book time slot</button>
    </div>
</div>
<!-- fish farm -->
<div class="box1" >
    <img src="https://images.pexels.com/photos/37769090/pexels-photo-37769090.jpeg?_gl=1*whna7g*_ga*MTg3MjMzNzQ2LjE3ODA4MTY3Mjk.*_ga_8JE65Q40S6*czE3ODA4MTY3MjkkbzEkZzEkdDE3ODA4MTY3ODMkajYkbDAkaDA." alt="fish farm">

<div class="field_info">
        <h1>Fish farm</h1>
        <p>Watch colorful fish and enjoy a peaceful atmosphere</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=fish farm&bgimg=https://images.pexels.com/photos/37769090/pexels-photo-37769090.jpeg?_gl=1*whna7g*_ga*MTg3MjMzNzQ2LjE3ODA4MTY3Mjk.*_ga_8JE65Q40S6*czE3ODA4MTY3MjkkbzEkZzEkdDE3ODA4MTY3ODMkajYkbDAkaDA.'">Book time slot</button>
    </div>
</div>
<!-- mango farm -->
<div class="box1" >
    <img src="https://miro.medium.com/v2/resize:fit:626/1*TW3qZw8rsUEJll5yYez9aA.jpeg" alt="mango farm">

<div class="field_info">
        <h1>Mango farm</h1>
        <p>Walk among bright sunflowers and fresh air</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=mango farm&bgimg=https://miro.medium.com/v2/resize:fit:626/1*TW3qZw8rsUEJll5yYez9aA.jpeg'">Book time slot</button>
    </div>
</div>
<!-- bird field -->
<div class="box1" >
    <img src="https://images.pexels.com/photos/30603162/pexels-photo-30603162.jpeg?_gl=1*98u6kk*_ga*MTg3MjMzNzQ2LjE3ODA4MTY3Mjk.*_ga_8JE65Q40S6*czE3ODA4MTY3MjkkbzEkZzEkdDE3ODA4MTcxMjAkajU5JGwwJGgw" alt="bird farm">

<div class="field_info">
        <h1>Bird field</h1>
        <p>Spot beautiful birds in their natural habitat</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=bird field&bgimg=https://images.pexels.com/photos/30603162/pexels-photo-30603162.jpeg?_gl=1*98u6kk*_ga*MTg3MjMzNzQ2LjE3ODA4MTY3Mjk.*_ga_8JE65Q40S6*czE3ODA4MTY3MjkkbzEkZzEkdDE3ODA4MTcxMjAkajU5JGwwJGgw'">Book time slot</button>
    </div>
</div>
<!-- Boating -->
<div class="box1" >
    <img src="https://tse2.mm.bing.net/th/id/OIP.cC-fMTUs1TgrlVBvx7uTLQHaE8?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3" alt="boating">

<div class="field_info">
        <h1>Boating area</h1>
        <p>Relax on the water and enjoy nature's beauty</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=Boating&bgimg=https://tse2.mm.bing.net/th/id/OIP.cC-fMTUs1TgrlVBvx7uTLQHaE8?r=0&cb=thfc1falcon2&rs=1&pid=ImgDetMain&o=7&rm=3'">Book time slot</button>
    </div>
</div>
<!-- trekking -->
<div class="box1" >
    <img src="https://t3.ftcdn.net/jpg/01/96/01/82/360_F_196018299_moUD9nFRL1OWaVTUG7YgsdCk3gCQVzj7.jpg" alt="trekking">

<div class="field_info">
        <h1>Trekking</h1>
        <p>Explore trails and discover breathtaking landscapes</p>
        
    </div> 
    <div class="book_btn">
        <button onclick="window.location.href='booking?farm=Trekking&bgimg=https://t3.ftcdn.net/jpg/01/96/01/82/360_F_196018299_moUD9nFRL1OWaVTUG7YgsdCk3gCQVzj7.jpg'">Book time slot</button>
    </div>
</div> 
    </section>
    
  <footer>
         &copy; 2026 All Rights Reserved & Developed by Sri
    </footer>  
</body>

</html>


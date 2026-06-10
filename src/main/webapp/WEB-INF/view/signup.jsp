<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
    <style type="text/css">
    	body{
    height: 100vh;
    width: 100%;
    box-sizing: border-box;
    display: flex;
    justify-content: center;
    align-items: center;
}

.form{
    
    background-color:rgb(158, 252, 135);
    height: 320px;
    width: 350px;
    display: flex;
    border: 2px solid black;
    border-radius: 8px;
    flex-direction: column;
    
    
}
form{
    font-size: large;
    font-family: Arial, Helvetica, sans-serif;
    display: grid;
    
    grid-template-columns: min-content;
    align-items: center;
    justify-content: space-around;
    gap: 10px;
    
    
}
.submit_btn{
    margin-top: 5%;
    /* background-color: aqua; */
    display: flex;
    justify-content: space-around;
    align-items: center;
    
}
.submit_btn>button,#submit{
	height: 30px;
    background-color:black;
    color: white;
    border-radius: 6px;
    cursor: pointer;
}
    </style>
</head>
<body>
    <div class="form">
        <center><h1>Signup</h1></center>
    <form action="signupdb">
        <label for="username">user name:
            <input type="text" name="username" id="username" required >
        </label>
         <label for="emai">mail:
            <input type="email" name="email" id="email" required >
        </label>
        <label for="password">Enter password:
            <input type="password" name="password" id="password" required>
        </label>
       
        <div class="submit_btn">
            <input type="submit" value="submit" id="submit">
        <button type="button" onclick="location.href='login'">back to login</button></div>
    </form>
    </div>

    
</body>
</html>
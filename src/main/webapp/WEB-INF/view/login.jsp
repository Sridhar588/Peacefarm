<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style type="text/css">
 body{
    height: 100vh;	
    width: 100%;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgb(176, 239, 255);
    
}


.login{
    height: 300px;
    width: 300px;
    background-color: rgb(236, 241, 214);
    border: 2px solid black;
    border-radius: 10px;
    display: flex;
    align-items: center;
    flex-direction: column;
    
      
}

.inputs{
    /* background-color: blue; */
    display: flex;
    flex-direction: column;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    height: 40%;
    gap:10px;
    
}
.btn{
    display: flexbox;
    
    
    margin: 10%;
    bottom: 2px;
    /* background-color: cadetblue; */
}
.btn >input,button{
    height: 30px;
    margin-left: 10px;
    border-radius: 8px;
    background-color: black;
    color: white;
    cursor: pointer;
}

  	
    </style>
</head>
<body>
    <div >
        
       
            <form class="login" action="loginRes">
            
            <h1>Login</h1>

            
            <div class="inputs">
            <label for="username">Enter Username: </label>
            <input type="text" name="username" placeholder="Enter username" required>

            <label for="password">Enter Password: </label>
            <input type="password" name="password" placeholder="Enter username" required>

            <div class="btn">
                <input type="submit" value="submit">
                <button type="button" onclick="location.href='signup'">Signup</button>
            </div>
            </div>
        </form>
        
    </div>
    
</body>
</html>
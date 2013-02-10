<%-- 
    Document   : trangleSolution
    Created on : Feb 9, 2013, 6:46:52 PM
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer</title>
    </head>
    <body>
        <h1>Here's the hypotenuse of the triangle!</h1>
        
           <%
      Object oThird = request.getAttribute("thirdSide");
      if(oThird != null){
          out.println("The hypotenuse is: " + oThird);
      }else{
          out.println("I said it can't be null!! How many times must I tell you!!");
      }
      
      %>
      <p> <a href="index.jsp">Back to calculator home</a></p>
    </body>
</html>

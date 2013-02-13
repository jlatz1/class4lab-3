<%-- 
    Document   : triangleanswer
    Created on : Feb 13, 2013, 5:06:27 PM
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Here is the hypotenuse of the triangle:</h1>
           <%
      Object oThird = request.getAttribute("thirdSide");
      if(oThird != null){
          out.println("The hypotenuse is: " + oThird);
      }else{
          out.println("Really, really close!!");
      }
      
      %>
         <p><a href="index.jsp">Back to calculator home</a></p>
        
    </body>
</html>

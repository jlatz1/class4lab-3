<%-- 
    Document   : answer
    Created on : Feb 7, 2013, 1:02:12 PM
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
      <% 
      Object oArea = request.getAttribute("area");
      if(oArea != null){
          out.println("The area is: " + oArea);
          
      }else{
          out.println("Cannot be null!! Close, but no cigar!!");
      }
          
      Object oCircle = request.getAttribute("areaOfCircle");
      if(oCircle != null){
          out.println("The area of the circle is: " + oCircle);
      }else{
          out.println("Really!! It's null!! Close, but no cigar!!");
      }
      
      Object oThird = request.getAttribute("thirdSide");
      if(oThird != null){
          out.println("The hypotenuse is: " + oThird);
      }else{
          out.println("I said it can't be null!! How many times must I tell you!!");
      }
      
      %>
      </br>
      <p> So here are your answers</p>
      <p> <a href="index.jsp">Back to calculator home</a></p>
      
    </body>
</html>

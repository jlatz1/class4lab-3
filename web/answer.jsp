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
        <title>Answers!</title>
    </head>
    <h1>Here is the area of the rectangle!</h1>
    <body>
      <% 
      Object oArea = request.getAttribute("area");
      if(oArea != null){
          out.println("The area is: " + oArea);
          
      }else{
          out.println("Cannot be null!! Close, but no cigar!!");
      }
      %>
     
      <p> <a href="index.jsp">Back to calculator home</a></p>
      
    </body>
</html>

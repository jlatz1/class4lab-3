<%-- 
    Document   : areaCircleAnswer
    Created on : Feb 9, 2013, 6:46:03 PM
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
        <h1>Here's the Area of the circle for the fields entered</h1>
        
          <% Object oCircle = request.getAttribute("areaOfCircle");
      if(oCircle != null){
          out.println("The area of the circle is: " + oCircle);
      }else{
          out.println("Really!! It's null!! Close, but no cigar!!");
      }
      %>
       <p> <a href="index.jsp">Back to calculator home</a></p>
    </body>
</html>

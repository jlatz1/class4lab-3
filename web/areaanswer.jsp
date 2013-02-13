<%-- 
    Document   : areaanswer
    Created on : Feb 13, 2013, 5:05:24 PM
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area</title>
    </head>
    <body>
        <h1>Here is the area:</h1>
                         
                    
                         <% 
      Object oArea = request.getAttribute("area");
      if(oArea != null){
          out.println("The area is: " + oArea);
          
      }else{
          out.println("It's null!! Close, but no cigar!!");
      }
      %>
        
    </body>
</html>

<%-- 
    Document   : index
    Created on : Feb 6, 2013, 5:06:21 PM
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator application</title>
    </head>
    <body>
        <h1>Calculator</h1>
        <h2>Rectangle Area</h2>
       
        <form id="RectForm" name="rectForm" method="POST" action="AreaController">
            <table width="200" cell-padding="3" cell-spacing="3" border="0">
                <tr>
                    <td>Length: 
                        <input id="length" name="length" type="text"></td>
                    <td>Width: 
                        <input id="width" name="width" type="text"></td>
                </tr>
                <tr>
            <input type="submit" name="calculate" value="calculate"></tr>
            </table>
            
        </form>
        <h2>Circle Area</h2>
        
        <form id="CircleForm" name="CircleForm" method="POST" action="AreaCircleController">
            <table width="200" cell-padding="3" cell-spacing="3" border="0">
                <tr>
                    <td>Radius: 
                        <input id="radius" name="radius" type="text"></td>
                </tr>
                <tr>
            <input type="submit" name="submit" value="calculate"></tr>
            </table>
        </form>
        
        <h2>Hypotenuse</h2>
        <form id="TraingleForm" name="TraingleForm" method="POST" action="TrangleController">
            <table width="200" cell-padding="3" cell-spacing="3" border="0">
                <tr>
                    <td> a: 
                        <input id="a" name="a" type="text"></td>
                    
                    <td>b: 
                        <input id="b" name="b" type="text"></td>
                </tr>
                <tr>
            <input type="submit" name="submit" value="calculate"></tr>
            </table>
        </form>
        
    </body>
</html>

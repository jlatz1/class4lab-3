/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Jessie
 */
@WebServlet(name = "AreaController", urlPatterns = {"/AreaController"})
public class AreaController extends HttpServlet {
    private static final String DESTINATION = "/answer.jsp"; 
    private static final String AREA = "area";
    private static final String CIRCLE = "circle";
    private static final String CALCULATION = "calculation";
    
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String calculation = request.getParameter(CALCULATION);
        String calc = "";
        
     
        if(CALCULATION.equals(AREA)){
            calc = "Area of a rectangle";
        double length = Double.valueOf(request.getParameter("length"));
        request.setAttribute("length", (length));
        double width = Double.valueOf(request.getParameter("width"));
        request.setAttribute("width", width);
        double area = this.getArea(length, width);
        request.setAttribute("area", area);
        }
        else if(CALCULATION.equals(CIRCLE)){
            calc = "Area of a circle";
       double radius = Double.valueOf(request.getParameter("radius"));
       request.setAttribute("radius", (radius));
       double pi = 3.14159265359;
       request.setAttribute("pi", pi);
       double areaOfCircle = this.getAreaOfCircle(radius, pi);
       request.setAttribute("areaOfCircle", areaOfCircle);
       out.println("Area of circle: " + " " + areaOfCircle);
        
       /* }else{
            calc = "Hypotenuse";
        double a = Double.valueOf(request.getParameter("a"));
        request.setAttribute("a", a);
        double b = Double.valueOf(request.getParameter("b"));
        request.setAttribute("b", b);
      
        
        double thirdSide = this.getThirdSide(a, b);
        request.setAttribute("thirdSide", thirdSide);*/
        }
        RequestDispatcher view =
                request.getRequestDispatcher(DESTINATION);
        view.forward(request, response);
     
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
     public double getArea(double length, double width) {
        return length * width;
    }
     
     public double getAreaOfCircle(double radius, double pi){
    
        return radius * (pi * pi);
    }
     
       public double getThirdSide(double a, double b){
        double thirdSide = Math.sqrt((a * a) + (b * b));
        return thirdSide;
    }
}

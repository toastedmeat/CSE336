/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package developerWorks.Servlets;

import developerWorks.beans.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jessica
 */
@WebServlet(name = "verificationServlet", urlPatterns = {"/verificationServlet"})
public class verificationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ServletContext sc = this.getServletContext();
            User formData = (User) sc.getAttribute("formData");
            if(formData == null){
                formData = new User();
            }
            
            Enumeration e = request.getParameterNames();
            while(e.hasMoreElements()){
                String input = (String) e.nextElement();
                if(input.equals("first")){
                    out.println(formData.setFirstName(request.getParameter(input)));
                } 
                else if(input.equals("last")){
                    out.println(formData.setLastName(request.getParameter(input)));
                }
                else if(input.equals("email")){
                    out.println(formData.setEmail(request.getParameter(input)));
                }
                else if(input.equals("password")){
                    out.println(formData.setPassword(request.getParameter(input)));
                }
                else if(input.equals("repassword")){
                    out.println(formData.setRePassword(request.getParameter(input)));
                }
                else if(input.equals("alias")){
                    out.println(formData.setDisplayName(request.getParameter(input)));
                }
                else if(input.equals("CountryOfRes")){
                    out.println(formData.setCountry(request.getParameter(input)));
                }
                else if(input.equals("City")){
                    out.println(formData.setCity(request.getParameter(input)));
                }
                else if(input.equals("Language")){
                    out.println(formData.setLanguage(request.getParameter(input)));
                }
                else if(input.equals("SecurityQues")){
                    out.println(formData.setSecurityQuestion(request.getParameter(input)));
                }
                else if(input.equals("SecurityAns")){
                    out.println(formData.setSecurityAnswer(request.getParameter(input)));
                }
            }
            
            sc.setAttribute("formData", formData);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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

}

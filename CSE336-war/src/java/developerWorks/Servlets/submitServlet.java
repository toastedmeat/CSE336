/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package developerWorks.Servlets;

import developerWorks.beans.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Eric
 */
public class submitServlet extends HttpServlet {

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
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            User formData = new User();
            formData.setFirstName(request.getParameter("FName"));
            formData.setLastName(request.getParameter("LName"));
            formData.setEmail(request.getParameter("UserID"));
            formData.setPassword(request.getParameter("Password"));
            formData.setRePassword(request.getParameter("RePassword"));
            formData.setDisplayName(request.getParameter("alias"));
            formData.setCountry(request.getParameter("CountryOfRes"));
            formData.setCity(request.getParameter("City"));
            formData.setLanguage(request.getParameter("Language"));
            formData.setSecurityQuestion(request.getParameter("SecurityQues"));
            formData.setSecurityAnswer(request.getParameter("SecurityAns"));
            if(request.getParameter("NC_CHECK_EMAIL") != null)
                formData.setByEmail(true);
            else
                formData.setByEmail(false);
            if(request.getParameter("NC_CHECK_OTHER") != null)
                formData.setByTelephoneOrPostalMail(true);
            else
                formData.setByTelephoneOrPostalMail(false);
            
            String urlSuccess = "submitPage.jsp";
            String urlFail = "index.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(urlFail);
            request.setAttribute("formData", formData);
            
            if(formData.isValid()){
                RequestDispatcher r = request.getRequestDispatcher(urlSuccess);
                r.forward(request, response);
                //response.sendRedirect(urlSuccess);
            } else {
                request.setAttribute("errorMessage", "Invalid Email Address");
                rd.include(request, response);
            }
        //}
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

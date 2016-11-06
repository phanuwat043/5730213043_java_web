
package sport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddCustomerController extends HttpServlet {


    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            //out.println("add new customer");
            HttpSession session = request.getSession(true);

            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String add = request.getParameter("address");
            String tel = request.getParameter("tel");
            String mail = request.getParameter("email");

            Date now = new Date();
            Customer cust = new Customer(firstname,lastname,add,tel,mail);
            /*cust.setCfname(firstname);
            cust.setClname(lastname);
            cust.setCaddress(add);
            cust.setCtel(tel);
            cust.setCemail(mail);*/

            CustomerServices custs = new CustomerServices();
            String resultMessage = custs.addCustomer(cust);

            RequestDispatcher rd = request.getRequestDispatcher("AddCustomer.jsp?message=" + resultMessage);
            request.setAttribute("searchResult", null);
            rd.forward(request, response);
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

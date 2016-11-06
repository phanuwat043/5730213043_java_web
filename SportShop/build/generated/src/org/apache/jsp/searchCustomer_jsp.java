package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import sport.Customer;

public final class searchCustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Search Cutomer</title>\n");
      out.write("    </head>\n");
      out.write("    <body align = \"center\">\n");
      out.write("        <h1>Search Customer from name</h1>\n");
      out.write("        \n");
      out.write("        ");

            try {
                List<Customer> clist = (List<Customer>) session.getAttribute("CustomerListResult");
                if (clist != null) {
                    
        
      out.write("\n");
      out.write("        <table border=\"1\" align = \"center\">\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Customer ID</td>\n");
      out.write("                    <td>Firstname</td>\n");
      out.write("                    <td>Lastname</td>\n");
      out.write("                </tr>\n");
      out.write("                ");
 for (Customer cust : clist) {
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
 out.println(cust.getCid());
                        
      out.write("</td>\n");
      out.write("                    <td>");
 out.println(cust.getCfname());
                        
      out.write("</td>\n");
      out.write("                    <td>");
 out.println(cust.getClname());
                        
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("        ");

                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }
        
      out.write("\n");
      out.write("        <br><br><a href=\"AddCustomer.jsp\">back to search name page</a><br>\n");
      out.write("        <a href=\"index.html\">back to first page</a>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

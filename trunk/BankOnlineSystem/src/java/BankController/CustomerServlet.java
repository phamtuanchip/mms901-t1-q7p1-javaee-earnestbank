/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import BankEntity.Customer;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

/**
 *
 * @author Administrator
 */
public class CustomerServlet extends HttpServlet{
    private RequestDispatcher jsp;
    public CustomerServlet(){
    }
    public void init(ServletConfig config) throws ServletException {
        ServletContext context = config.getServletContext();
        jsp = context.getRequestDispatcher("/New_Customer.jsp");
        }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException{
        PrintWriter out = response.getWriter();
        String username = (String)request.getParameter("username").trim();
        String password = (String)request.getParameter("pwd").trim();
        String bankAN = (String)request.getParameter("bankAN").trim();
        int bankaccnum = Integer.parseInt(bankAN);
        String email = (String)request.getParameter("email").trim();
        String contact = (String)request.getParameter("contact").trim();
        CustomerController cust = new CustomerController();
        if(cust.check_UserName(username)){
            out.print("Register failed because username unavailable!!!");
            jsp.forward(request, response);
        }
        else{
            Customer c = new Customer(username, password, bankaccnum, email, contact);
            cust.AddCustomer(c);
            out.print("Register successful for user:" + c.getUserName());
            System.out.print("ok!");
            response.sendRedirect("New_Customer.jsp");
            //jsp.forward(request, response);
        }
    }
}

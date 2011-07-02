/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import BankEntity.Customer;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author Administrator
 */
//@WebServlet("/Login")
public class LoginServlet extends HttpServlet{
    private RequestDispatcher jsp;   
    public LoginServlet(){
      }
    public void init(ServletConfig config) throws ServletException {
        ServletContext context = config.getServletContext();
        jsp = context.getRequestDispatcher("/index.jsp");
     }
      protected void doGet(HttpServletRequest request,
          HttpServletResponse response) throws ServletException, IOException{
          
      }
       protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException{
          PrintWriter out = response.getWriter();
          String username = (String)request.getParameter("usn").trim();
          String password = (String)request.getParameter("pswd").trim();
          System.out.println("username: " + username + ", password: " + password);
          CustomerController cust = new CustomerController();
          boolean flag = cust.check_Customer(username, password);
          if (flag==true){
              HttpSession session = request.getSession();
              User user = new User(username);
              session.setAttribute("CurrentUser", user);
              //session.getAttribute("authorized");
              //response.getWriter().write("<b>Welcome"+ session.getAttribute("authorized") +"</b>");
              System.out.print("1");
              //System.out.print(session.getAttribute("authorized"));
              jsp.forward(request, response);
              response.sendRedirect("index.jsp");
              return;
          }
          else{
              HttpSession session = request.getSession();
              session.setAttribute("CurrentUser", null);
              response.getWriter().write("Invalid Account!");
              jsp.forward(request, response);
              System.out.print("2");
              return;
          }
       }
    
}

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

/**
 *
 * @author Administrator
 */
public class CheckUserServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException{
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username").trim();
        CustomerController cust = new CustomerController();
        boolean flag = cust.check_UserName(username);
        if(flag){
            System.out.print("unavaliable");
            out.print("<font color=red><b>"+username+"</b> is already in use</font>");
        }
        else{
            System.out.print(username);
            out.print("<font color=green><b>"+username+"</b> is available </font>");
        }
    }
}

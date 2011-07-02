/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Administrator
 */
public class Filter_Login extends HttpServlet implements Filter{
    private FilterConfig config;

    @Override
    public void init(FilterConfig config) throws ServletException {
        this.config = config;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        User user = new User();
        user = (User)request.getAttributeNames();
        if(user==null){
            out.print("You have not logged in");
        }
    }

    @Override
    public void destroy() {
        config=null;
    }
    
}

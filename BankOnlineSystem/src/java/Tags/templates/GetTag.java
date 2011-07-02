/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Tags.templates;

import java.util.Hashtable;
import java.util.Stack;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;
import beans.templates.PageParameter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class GetTag extends TagSupport{
   private String name;
   private Object role;
    // setter method for name attribute
   public void setName(String name) {
      this.name = name;
   }
   public void setRole(Object role) {
        this.role = role;
   }
   public int doStartTag() throws JspException {
       // obtain reference to template stack
      Stack stack = (Stack)pageContext.getAttribute(
               "template-stack", PageContext.REQUEST_SCOPE);

       // stack should not be null
      if(stack == null)
         throw new JspException("GetTag.doStartTag(): " +
                                 "NO STACK");

       // peek at hashtable
      Hashtable params = (Hashtable)stack.peek();

       // hashtable should not be null
      if(params == null)
         throw new JspException("GetTag.doStartTag(): " +
                                 "NO HASHTABLE");

       // get page parameter from hashtable
      PageParameter param = (PageParameter)params.get(name);

      if(param != null) {
         String content = param.getContent();
         //if(roleisValid()==true){
             if(param.isDirect()) {
                 // print content if direct attribute is true
                try {
                   pageContext.getOut().print(content);
                }
                catch(java.io.IOException ex) {
                   throw new JspException(ex.getMessage());
                }
             }
             else {
                 // include content if direct attribute is false
                try {
                   pageContext.getOut().flush();
                   pageContext.include(content);
                }
                catch(Exception ex) {
                   throw new JspException(ex.getMessage());
                }
             }
       //  }        
      }
      return SKIP_BODY; // not interested in tag body, if present
   }
    // tag handlers should always implement release() because
   // handlers can be reused by the JSP container
   public void release() {
      name = null;
      role = null;
   }
   /*private boolean roleisValid(){
       //HttpServletRequest request = null;
       //HttpSession session = request.getSession();
       if(pageContext.getSession().getAttribute("authorized")!=null && role!=null){
           if(role == (javax.servlet.http.HttpSession)pageContext.getAttribute("authorized")){
            return true;
           }
       }
       else return role==null;
       return false;
   }
    * 
    */
}

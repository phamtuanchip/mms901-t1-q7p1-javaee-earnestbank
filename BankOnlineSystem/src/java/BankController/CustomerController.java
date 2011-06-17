/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;

import BankEntity.Customer;
import javax.swing.text.Document;
import javax.ws.rs.core.Request;
import org.hibernate.*;

/**
 *
 * @author Administrator
 */
public class CustomerController {
    public static void main(String[] args) {
        Session sess = null;
        try{
            sess = HibernateUtil.currentSession();
            Transaction tx = sess.beginTransaction();
            Customer c = new Customer();
            c.setUserName("Tung");
            c.setPassword("123");
            c.setBankAccNumber(12345);
            c.setEmailId("tung89nt@gmail.com");
            c.setContactId("0987858848");
            sess.save(c);
            System.out.print("Successfully data insert");
            tx.commit();
        }
        catch(Exception e){
            System.out.print(e.getMessage());
        }
        finally{
            sess.close();
        }
        
    }
    public void AddCustomer(Customer c){
        Session sess = null;
        try{
            sess = HibernateUtil.currentSession();
            Transaction tx = sess.beginTransaction();
            sess.save(c);
            tx.commit();
        }
        catch(Exception e){
            System.out.print(e.getMessage());
        }
        finally{
            sess.close();
        }
    }
}

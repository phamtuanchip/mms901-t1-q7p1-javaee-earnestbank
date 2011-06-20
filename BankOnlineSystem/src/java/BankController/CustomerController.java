/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;
import BankEntity.Customer;
import org.hibernate.*;

/**
 *
 * @author Administrator
 */
public class CustomerController {
    
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

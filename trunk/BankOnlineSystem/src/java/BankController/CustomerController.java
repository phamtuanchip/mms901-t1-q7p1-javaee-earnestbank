/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BankController;
import BankEntity.Customer;
import java.util.List;
import org.hibernate.*;
public class CustomerController {
    public CustomerController(){}
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
    public List<Customer> getListCustomer(){
        List<Customer> listCust = null;
        Session sess = null;
        try{
            sess = HibernateUtil.currentSession();
            Transaction tx = sess.beginTransaction();
            Query q = sess.createSQLQuery("select * from Customer").addEntity(Customer.class);
            listCust = (List<Customer>)q.list();
            tx.commit();
        }catch(Exception e){
            e.printStackTrace();
            e.getMessage();
        }
        return listCust;
    }
    public boolean  check_Customer(String username, String password){
        List<Customer> listCust = getListCustomer();
        for(int i=0; i < listCust.size(); i++){
            if(listCust.get(i).getUserName().equals(username) 
                && listCust.get(i).getPassword().equals(password)){
                return true;
            }
        }
        return false;
    }
    public boolean check_UserName(String username)
    {
        List<Customer> listCust = getListCustomer();
        for(int i=0; i < listCust.size(); i++){
            if(listCust.get(i).getUserName().equals(username)){
                return true;
            }
        }
        return false;
    }
}
